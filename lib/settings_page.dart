import 'package:flutter/material.dart';
//
// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Game Settings',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             ListTile(
//               title: const Text('Number of Overs'),
//               trailing: DropdownButton<String>(
//                 value: '5', // Default value
//                 onChanged: (String? newValue) {
//                   // Handle dropdown value change
//                 },
//                 items: <String>['5', '10', '15', '20']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ),
//             ListTile(
//               title: const Text('Difficulty Level'),
//               trailing: DropdownButton<String>(
//                 value: 'Easy', // Default value
//                 onChanged: (String? newValue) {
//                   // Handle dropdown value change
//                 },
//                 items: <String>['Easy', 'Medium', 'Hard']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ),
//             const Divider(),
//             const Text(
//               'Additional Options',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             SwitchListTile(
//               title: const Text('Dark Mode'),
//               value: true, // Default value
//               onChanged: (bool value) {
//                 // Handle switch value change
//               },
//             ),
//             SwitchListTile(
//               title: const Text('Sound Effects'),
//               value: true, // Default value
//               onChanged: (bool value) {
//                 // Handle switch value change
//               },
//             ),
//             SwitchListTile(
//               title: const Text('Music'),
//               value: true, // Default value
//               onChanged: (bool value) {
//                 // Handle switch value change
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const SettingsBody(),
    );
  }
}

class SettingsBody extends StatefulWidget {
  const SettingsBody({super.key});

  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Additional Options',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: _darkMode,
            onChanged: (bool value) {
              setState(() {
                _darkMode = value;
                if (_darkMode) {
                  // Enable dark mode
                  Theme.of(context).brightness == Brightness.dark;
                } else {
                  // Disable dark mode
                  Theme.of(context).brightness == Brightness.light;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}

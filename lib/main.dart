import 'package:book_cricket/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookCricketApp());
}

class BookCricketApp extends StatelessWidget {
  const BookCricketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Cricket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Book Cricket'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the gameplay screen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const GameplayScreen()),
//                 );
//               },
//               child: const Text('Start New Game'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the instructions screen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const InstructionsScreen()),
//                 );
//               },
//               child: const Text('View Instructions'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the settings screen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const SettingsScreen()),
//                 );
//               },
//               child: const Text('Settings'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Exit the app
//                 Navigator.pop(context);
//               },
//               child: const Text('Exit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
class GameplayScreen extends StatelessWidget {
  const GameplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gameplay'),
      ),
      body: const Center(
        child: Text('Gameplay Screen'),
      ),
    );
  }
}

class InstructionsScreen extends StatelessWidget {
  const InstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instructions'),
      ),
      body: const Center(
        child: Text('Instructions Screen'),
      ),
    );
  }
}


// import 'package:book_cricket/settings_page.dart';
// import 'package:flutter/material.dart';
// import 'gameplay_screen.dart';
// import 'instructions_screen.dart';
// import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Cricket'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GameplayScreen()),
                );
              },
              child: Text('Start New Game'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InstructionsScreen()),
                );
              },
              child: Text('View Instructions'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: Text('Settings'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}

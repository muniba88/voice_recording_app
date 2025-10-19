import 'package:flutter/material.dart';
import 'package:recoring_app/screens/signup_screen.dart';
import 'package:recoring_app/screens/home/home_screen.dart';
import 'package:recoring_app/screens/project/projectscreen.dart';
import 'package:recoring_app/screens/profile/profile.dart';
import 'package:recoring_app/screens/messages/messages_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      onGenerateRoute: (settings) {
        // ✅ Handle dynamic routing
        if (settings.name == '/signup') {
          return MaterialPageRoute(builder: (context) => const SignupScreen());
        }
        if (settings.name == '/home') {
          // 👇 this lets us open a specific tab (like Projects)
          final int initialIndex = settings.arguments as int? ?? 0;
          return MaterialPageRoute(
            builder: (context) => HomeScreen(initialIndex: initialIndex),
          );
        }

        if (settings.name == '/project') {
          return MaterialPageRoute(builder: (context) => const ProjectScreen());
        }

        if (settings.name == '/profile') {
          return MaterialPageRoute(builder: (context) => const ProfileScreen());
        }

        if (settings.name == '/messages') {
          return MaterialPageRoute(
              builder: (context) => const MessagesScreen());
        }

        return null;
      },
    );
  }
}

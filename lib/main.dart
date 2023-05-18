import 'package:flutter/material.dart';
import 'screens/aboutme.dart';
import 'screens/gallery.dart';
import 'screens/home.dart';
import 'screens/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio - Louis Badr',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/projects': (context) => const ProjectsScreen(),
        '/gallery': (context) => const GalleryScreen(),
        '/aboutme': (context) => const AboutMeScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E45ED),
          background: const Color(0xFF04071B),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
          titleMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
          titleSmall: TextStyle(
            fontSize: 12,
            color: Color(0xFFF4EFDC),
          ),
          displayMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFFF4EFDC),
          ),
        ),
      ),
    );
  }
}

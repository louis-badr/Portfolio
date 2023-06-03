import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/screens/home.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Louis Badr',
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E45ED),
          background: const Color(0xFF04071B),
        ),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 20,
            color: Color(0xFFF4EFDC),
          ),
          titleMedium: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
          titleLarge: TextStyle(
            fontSize: 56,
            color: Color(0xFFF4EFDC),
          ),
          headlineSmall: TextStyle(
            fontSize: 14,
            color: Color(0xFFF4EFDC),
          ),
          headlineMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
          headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
          displaySmall: TextStyle(
            fontSize: 12,
            color: Color(0xFFF4EFDC),
          ),
          displayMedium: TextStyle(
            fontSize: 18,
            color: Color(0xFFF4EFDC),
          ),
          displayLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio Lucas Mosart',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomeScreen(),
    ).animate().fadeIn(
          duration: 800.ms,
        );
  }
}

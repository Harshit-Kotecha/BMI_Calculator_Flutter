import 'package:bmi_calculator/home.dart';
import 'package:bmi_calculator/models/calculate.dart';
import 'package:bmi_calculator/results_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? activeScreen;

  void switchScreen(Calculate calculate) {
    setState(() {
      activeScreen = ResultsScreen(calculate: calculate, restart: restart);
    });
  }

  void restart() {
    setState(() {
      activeScreen = HomeScreen(switchScreen);
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = HomeScreen(switchScreen);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2f3640),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          displayLarge: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
          displayMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: activeScreen,
    );
  }
}

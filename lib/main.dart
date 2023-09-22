import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme().copyWith(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

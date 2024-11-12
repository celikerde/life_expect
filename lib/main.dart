import 'package:flutter/material.dart';
import 'package:life_expectancy/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightGreen,
        primaryColor: Colors.lightGreen,
      ),
      home: InputPage(),
    );
  }
}

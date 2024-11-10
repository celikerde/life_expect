import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.amber)),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Expectancy'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Form',
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.blueGrey)),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

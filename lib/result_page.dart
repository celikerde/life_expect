import 'package:flutter/material.dart';
import 'package:life_expectancy/calculate.dart';
import 'package:life_expectancy/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData userData;
  const ResultPage({
    super.key,
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Center(
                child: Text('Result: ${Calculate(userData).calc().toInt()}')),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Center(child: Text('Back to Home Page'))),
              ))
        ],
      ),
    );
  }
}

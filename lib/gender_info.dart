import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderInfo extends StatelessWidget {
  final String gender;
  final IconData icon;
  const GenderInfo({required this.gender, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          gender,
          style: const TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

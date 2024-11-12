import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color color;
  final Widget? child;
  final VoidCallback? onPress;
  const MyContainer({
    this.color = Colors.white,
    this.child,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

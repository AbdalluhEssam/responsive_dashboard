import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      margin: EdgeInsets.only(right: 6),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: BoxDecoration(
        color:isActive ? Color(0xff4EB7F2) : Color(0xFFE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

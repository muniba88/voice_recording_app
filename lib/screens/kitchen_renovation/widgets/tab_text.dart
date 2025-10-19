import 'package:flutter/material.dart';

/// 🔹 Reusable tab text widget
class TabText extends StatelessWidget {
  final String text;
  const TabText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
        fontSize: 13.64,
        height: 19.49 / 13.64,
        color: Color(0xFF2C2825),
      ),
    );
  }
}

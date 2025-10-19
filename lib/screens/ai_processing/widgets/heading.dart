import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Organizing your notes into\nstructured project data…",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 1.3,
        color: Color(0xFF2C2825),
      ),
    );
  }
}

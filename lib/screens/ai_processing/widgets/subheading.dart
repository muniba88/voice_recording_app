import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  const SubHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Spaces, Materials, Vendors, Tasks",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.4,
        color: Color(0xFFA8A390),
      ),
    );
  }
}

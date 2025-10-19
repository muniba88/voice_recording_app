import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342, // 👈 fixed width
      height: 48, // 👈 fixed height
      alignment: Alignment.center, // 👈 vertical + horizontal centering
      // 👈 background color
      child: const Text(
        "Speak naturally about your renovation plans and ideas",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400, // Regular
          fontSize: 16, // 16px
          height: 24 / 16, // 👈 line-height = 24px
          color: Color(0xFF827F77), // 👈 readable against dark bg
        ),
      ),
    );
  }
}

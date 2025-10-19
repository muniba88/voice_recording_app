import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356, // 👈 fixed width
      height: 74, // 👈 fixed height
      alignment:
          Alignment.center, // 👈 centers the text vertically/horizontally
      // 👈 background color
      child: const Text(
        "Tap the mic to capture project notes hands-free",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600, // SemiBold
          fontSize: 24, // 24px
          height: 32 / 24, // 👈 line-height (32px ÷ 24px)
          color: Color(0xFF2C2825), // 👈 make text visible on dark bg
        ),
      ),
    );
  }
}

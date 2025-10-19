import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30, // 👈 fixed width
      height: 20, // 👈 fixed height
      child: Container(
        alignment: Alignment.center, // 👈 vertical + horizontal center
        decoration: BoxDecoration(
          // 👈 background color
          borderRadius: BorderRadius.circular(4), // optional (rounded corners)
        ),
        child: const Text(
          "Skip",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500, // Medium
            fontSize: 14,
            height: 20 / 14, // 👈 line-height (20px / 14px font)
            color: Color(0xFFC8A95F), // 👈 text color (white to contrast bg)
          ),
        ),
      ),
    );
  }
}

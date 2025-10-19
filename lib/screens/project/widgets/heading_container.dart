import 'package:flutter/material.dart';

class HeadingContainer extends StatelessWidget {
  const HeadingContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 69,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Text(
        "Modern Living Room",
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 22,
          height: 33 / 22,
          color: Color(0xFF2C2825),
        ),
      ),
    );
  }
}

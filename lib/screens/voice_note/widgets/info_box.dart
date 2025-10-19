import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.47,
        vertical: 22.19,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xFFE1E1D5),
          width: 1,
        ),
      ),
      child: const Text(
        "Your notes will be automatically organized into tasks, materials, and schedules for easy project management",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 13.64,
          height: 22.17 / 13.64,
          color: Color(0xFF4B5563),
        ),
      ),
    );
  }
}

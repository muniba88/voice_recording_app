import 'package:flutter/material.dart';

// ✅ Skill Box Widget
class SkillBox extends StatelessWidget {
  final String text;
  const SkillBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9999),
        border: Border.all(
          color: const Color(0xFFC8A95F),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 20 / 14,
          color: Color(0xFF2C2825),
        ),
      ),
    );
  }
}

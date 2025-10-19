import 'package:flutter/material.dart';

class MoreAvatarItem extends StatelessWidget {
  final String text; // default is "+2"
  final double size;

  const MoreAvatarItem({
    super.key,
    this.text = "+2",
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(9999),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 20 / 14,
            color: Color(0xFF2C2825),
          ),
        ),
      ),
    );
  }
}

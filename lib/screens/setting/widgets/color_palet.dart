import 'package:flutter/material.dart';

/// 🔵 A small circular color indicator, used for showing brand colors, etc.
class ColorCircle extends StatelessWidget {
  final Color color;
  final bool hasBorder;
  final double size;

  const ColorCircle({
    super.key,
    required this.color,
    this.hasBorder = false,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: hasBorder
            ? Border.all(color: const Color(0xFFE5E7EB), width: 2)
            : null,
      ),
    );
  }
}

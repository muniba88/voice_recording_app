import 'package:flutter/material.dart';

class CircleDot extends StatelessWidget {
  final double size;
  final double opacity;
  final Color color;

  const CircleDot({
    super.key,
    required this.size,
    required this.opacity,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withOpacity(opacity),
        shape: BoxShape.circle,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CircleAvatarDot extends StatelessWidget {
  final double size;
  final Color color;
  const CircleAvatarDot(
      {super.key, this.size = 10, this.color = const Color(0xFFC8A95F)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class VerticalLine extends StatelessWidget {
  final double height;
  final Color color;
  const VerticalLine(
      {super.key, this.height = 100, this.color = const Color(0xFFC8A95F)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: color,
    );
  }
}

class TextInfo extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const TextInfo({
    super.key,
    required this.text,
    this.fontSize = 12,
    this.color = const Color(0xFFA8A390),
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: 1.3,
      ),
    );
  }
}

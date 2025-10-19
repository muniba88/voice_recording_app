import 'package:flutter/material.dart';

class AvatarItem extends StatelessWidget {
  final String imagePath;
  final double size;

  const AvatarItem({
    super.key,
    required this.imagePath,
    this.size = 36, // default size
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

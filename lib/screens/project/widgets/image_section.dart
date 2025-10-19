import 'package:flutter/material.dart';
import 'package:recoring_app/constants/image_strings.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 180,
      child: Image.asset(
        AppImages.homeDecor01, // <-- update path to your image
        fit: BoxFit.cover, // makes it responsive
      ),
    );
  }
}

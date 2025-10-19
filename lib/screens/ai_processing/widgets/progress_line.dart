import 'package:flutter/material.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
          colors: [
            Color(0xA8A3904D), // first 50%
            Color.fromARGB(255, 224, 217, 192), // next 50%
          ],
          stops: [0.5, 0.5], // ✅ split exactly 50-50
        ),
      ),
    );
  }
}

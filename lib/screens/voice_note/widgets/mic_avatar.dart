import 'package:flutter/material.dart';

class MicAvatar extends StatelessWidget {
  const MicAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // 👈 width
      height: 120, // 👈 height
      decoration: BoxDecoration(
        color: const Color(0xFFC8A95F), // 👈 background color
        shape: BoxShape.circle, // 👈 border-radius: 9999px
      ),
      child: Center(
        child: Container(
          width: 48, // 👈 icon container width
          height: 48, // 👈 icon container height
          decoration: const BoxDecoration(
            color: Color(0xFFC8A95F), // 👈 icon background
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.mic,
            size: 48, // 👈 icon size itself (slightly smaller than container)
            color: Colors.white, // 👈 match brand color
          ),
        ),
      ),
    );
  }
}

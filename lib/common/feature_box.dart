import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color avatarBgColor;
  final Color iconColor;

  const FeatureBox({
    super.key,
    required this.icon,
    required this.title,
    required this.avatarBgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106.5, // ✅ fixed width
      height: 90, // ✅ thoda zyada height (overflow avoid karne ke liye)
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE1E1D5)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: avatarBgColor,
            child: Icon(icon, size: 18, color: iconColor),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 1.3,
              color: Colors.black,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

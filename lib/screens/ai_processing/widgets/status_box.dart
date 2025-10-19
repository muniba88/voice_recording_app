import 'package:flutter/material.dart';

class StatusBox extends StatelessWidget {
  final Color borderColor;
  final Color avatarColor;
  final Color? avatarBorder;
  final IconData icon;
  final Color iconColor;
  final String heading;
  final String subheading;
  final double opacity;

  const StatusBox({
    super.key,
    required this.borderColor,
    required this.avatarColor,
    this.avatarBorder,
    required this.icon,
    required this.iconColor,
    required this.heading,
    required this.subheading,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        height: 68,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // ✅ Chhoti Circle Avatar (28x28 with 4px border)
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: avatarColor,
                shape: BoxShape.circle,
                border: avatarBorder != null
                    ? Border.all(color: avatarBorder!, width: 4)
                    : null,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 10, // chhota dot
                  color: iconColor,
                ),
              ),
            ),

            const SizedBox(width: 12),

            // ✅ Texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    fontSize: 13.64,
                    color: Color(0xFF2C2825),
                  ),
                ),
                Text(
                  subheading,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA8A390),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

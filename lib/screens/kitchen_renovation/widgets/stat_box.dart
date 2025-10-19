import 'package:flutter/material.dart';

/// 🔹 Reusable Stat Box
class StatBox extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  final Color valueColor;
  final Color iconColor;
  final Color avatarColor;

  const StatBox({
    required this.value,
    required this.label,
    required this.icon,
    required this.valueColor,
    required this.iconColor,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.58,
      padding: const EdgeInsets.all(16.47),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 Row: Number + Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  value,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                    fontSize: 23.39,
                    height: 31.18 / 23.39,
                    color: valueColor,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 15.5,
                backgroundColor: avatarColor,
                child: Icon(
                  icon,
                  size: 18,
                  color: iconColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Flexible(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
                fontSize: 13.64,
                height: 19.49 / 13.64,
                color: Color(0xFF4B5563),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

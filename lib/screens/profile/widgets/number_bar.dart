import 'package:flutter/material.dart';

// ✅ Reusable small widget for each stat
class NumberBar extends StatelessWidget {
  final String value;
  final String label;

  const NumberBar({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, // ✅ Prevent overflow by shrinking vertically
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Value text
        Text(
          value,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 1.3, // ✅ slightly reduced height
            color: Color(0xFF2C2825),
          ),
        ),

        // Reduced spacing
        const SizedBox(height: 2),

        // Label text
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.2, // ✅ compact height
            color: Color(0xFFA8A390),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MilestoneItem extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final bool showConnector;
  final bool isCompleted;

  const MilestoneItem({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    required this.showConnector,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Connector line
        if (showConnector)
          Positioned(
            top: 24,
            left: 11,
            child: Container(
              width: 2,
              height: 56,
              color: const Color(0xFFE5E7EB),
            ),
          ),

        // Content
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Circle avatar
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color:
                    isCompleted ? const Color(0xFFC8A95F) : Colors.transparent,
                borderRadius: BorderRadius.circular(9999),
                border: isCompleted
                    ? null
                    : Border.all(color: const Color(0xFFD1D5DB), width: 2),
              ),
            ),
            const SizedBox(width: 12),

            // Texts column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 24 / 16,
                    color: Color(0xFF2C2825),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 16 / 12,
                    color: Color(0xFF2C2825),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 20 / 14,
                    color: Color(0xFF2C2825),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

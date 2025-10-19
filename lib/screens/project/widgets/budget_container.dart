import 'package:flutter/material.dart';

class BudgetContainer extends StatelessWidget {
  const BudgetContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row: Budget info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Budget",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xFF2C2825),
                ),
              ),
              Text(
                "65% used • \$6,500/\$10,000",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xFF2C2825),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Progress bar
          Stack(
            children: [
              // Background bar (gray)
              Container(
                width: width,
                height: 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E7EB),
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
              // Filled bar (gold) — 65% width
              Container(
                width: width * 0.65,
                height: 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFC8A95F),
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

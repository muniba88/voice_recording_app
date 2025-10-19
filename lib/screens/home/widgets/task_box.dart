import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? rightSubtitle;
  final String statusText;
  final Color statusBgColor;
  final Color statusTextColor;
  final Color avatarBorderColor;

  const TaskCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.rightSubtitle,
    required this.statusText,
    required this.statusBgColor,
    required this.statusTextColor,
    required this.avatarBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE1E1D5)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          /// ---------- TOP ROW ----------
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: avatarBorderColor,
                        width: 2,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis, // ✅ prevent text overflow
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 24 / 16,
                      color: Color(0xFF2C2825),
                    ),
                  ),
                ],
              ),

              /// ---------- STATUS TAG ----------
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: statusBgColor,
                  borderRadius: BorderRadius.circular(9999),
                ),
                child: Text(
                  statusText,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    height: 16 / 12,
                    color: statusTextColor,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 4),

          /// ---------- BOTTOM ROW ----------
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: [
                /// Left Subheading
                Expanded(
                  child: Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis, // ✅ wrap safely
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 16 / 12,
                      color: Color(0xFFA8A390),
                    ),
                  ),
                ),

                /// ✅ Optional Right Text
                if (rightSubtitle != null)
                  Flexible(
                    child: Text(
                      rightSubtitle!,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis, // ✅ avoid overflow
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 16 / 12,
                        color: Color(0xFFA8A390),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

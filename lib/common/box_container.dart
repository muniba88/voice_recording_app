import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  final IconData icon;
  final String heading;
  final String subheading;
  final bool isSelected;
  final VoidCallback onTap;
  final double? maxWidth;

  const BoxContainer({
    super.key,
    required this.icon,
    required this.heading,
    required this.subheading,
    this.isSelected = false,
    required this.onTap,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: maxWidth ?? double.infinity,
        // ❌ height: 92 hata diya — ab height auto-adjust hogi
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isSelected ? const Color(0xFFC8A95F) : const Color(0xFFE1E1D5),
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // ✅ icon top aligned
          children: [
            /// Icon box
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 16),

            /// Text area
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min, // ✅ allow shrink to content
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      height: 28 / 18,
                      color: Color(0xFF2C2825),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subheading,
                    softWrap: true,
                    overflow: TextOverflow.visible, // ✅ allow multi-line
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 20 / 14,
                      color: Color(0xFF2C2825),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

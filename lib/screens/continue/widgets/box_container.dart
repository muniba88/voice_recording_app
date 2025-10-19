import 'package:flutter/material.dart';
import 'package:recoring_app/constants/colors.dart';

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
    required this.isSelected,
    required this.onTap,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // ✅ Responsive scaling
    double scale = screenWidth < 600 ? 1 : (screenWidth < 900 ? 1.1 : 1.3);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: maxWidth ?? double.infinity,
        margin: const EdgeInsets.only(bottom: 4),
        padding: EdgeInsets.symmetric(
          horizontal: 16 * scale,
          vertical: 16 * scale, // ✅ extra vertical room
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withOpacity(0.1) : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primary : const Color(0xFFE1E1D5),
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 26 * scale,
              color: isSelected ? AppColors.primary : const Color(0xFF2C2825),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Heading
                  Text(
                    heading,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16 * scale,
                      color: const Color(0xFF2C2825),
                    ),
                  ),
                  const SizedBox(height: 6),

                  /// ✅ Subheading (flexible & wrapped)
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      subheading,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 14 * scale,
                        height: 1.4,
                        color: AppColors.label,
                      ),
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

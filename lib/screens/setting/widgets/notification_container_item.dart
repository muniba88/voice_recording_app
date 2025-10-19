import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/custom_toggle_button.dart';

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool hasBottomBorder;
  final bool initialValue; // 👈 Added this

  const NotificationItem({
    super.key,
    this.icon = Iconsax.notification,
    required this.title,
    required this.description,
    this.hasBottomBorder = true,
    this.initialValue = false, // 👈 Default off
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: hasBottomBorder
            ? const Border(
                bottom: BorderSide(color: Color(0xFFF3F4F6), width: 1),
              )
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 🟡 Icon Subbox
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0x1AD4AF37),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              size: 20,
              color: const Color(0xFFC8A95F),
            ),
          ),
          const SizedBox(width: 12),

          // 🔸 Text Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 1.4,
                    color: Color(0xFF2C2825),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 1.3,
                    color: Color(0xFF2C2825),
                  ),
                ),
              ],
            ),
          ),

          // 🔘 Toggle Button
          CustomToggleButton(initialValue: initialValue),
        ],
      ),
    );
  }
}

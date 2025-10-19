import 'package:flutter/material.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'activity_common_widget.dart';

class AssignedContainer extends StatelessWidget {
  final String name;
  final String time;
  final String title;
  final String subtitle;
  final String tag;
  final String rightAvatarAsset;
  final String type;

  const AssignedContainer({
    super.key,
    required this.name,
    required this.time,
    required this.title,
    required this.subtitle,
    required this.tag,
    required this.rightAvatarAsset,
    this.type = "assigned",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0, bottom: 24),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, // ✅ white background
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row: Avatar + Name + Time + Type
            Row(
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(AppImages.profile06)),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextInfo(
                        text: name,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                    TextInfo(text: time),
                  ],
                ),
                const Spacer(),
                TextInfo(text: type),
              ],
            ),
            const SizedBox(height: 12),
            // Main Box with Plus Icon
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Color(0xFFF9FAFB),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0x1AD4AF37),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child:
                          Icon(Icons.add, size: 24, color: Color(0xFFC8A95F)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInfo(
                          text: title,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                      TextInfo(text: subtitle),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(AppImages.profile08)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // Tag Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                  color: Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(9999)),
              child: TextInfo(text: tag, fontSize: 12, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

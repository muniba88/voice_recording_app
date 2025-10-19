import 'package:flutter/material.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'activity_common_widget.dart';

class SharedIdeaContainer extends StatelessWidget {
  final String name;
  final String time;
  final String ideaText;
  final String type;
  final String imageAsset;
  final IconData icon;
  final String iconText;
  final String tag;

  const SharedIdeaContainer({
    super.key,
    required this.name,
    required this.time,
    required this.ideaText,
    this.type = "shared an idea",
    required this.imageAsset,
    required this.icon,
    required this.iconText,
    required this.tag,
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
                    backgroundImage: AssetImage(AppImages.profile04)),
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
            // Comment/Idea Row
            // Comment/Idea Row with dynamic height bar
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFFC8A95F),
                      borderRadius: BorderRadius.circular(9999),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextInfo(
                      text: ideaText,
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            // Image + Box
            Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(AppImages.homeDecor02),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 122,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Color(0x1AD4AF37),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Icon(icon, color: Color(0xFFC8A95F), size: 16),
                      const SizedBox(width: 4),
                      TextInfo(
                          text: iconText,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Bottom Tag Box
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

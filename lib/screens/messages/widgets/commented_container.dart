import 'package:flutter/material.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'activity_common_widget.dart';

class CommentedContainer extends StatelessWidget {
  final String name;
  final String time;
  final String comment;
  final String type;

  const CommentedContainer({
    super.key,
    required this.name,
    required this.time,
    required this.comment,
    this.type = "commented",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0, bottom: 24),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
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
                    backgroundImage: AssetImage(AppImages.profile01)),
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
            // Comment bar + text (wrap long comments)
            // Comment bar + text (dynamic height)
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
                      text: comment,
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            // Bottom Row: Box + Reply
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(9999)),
                  child: TextInfo(
                      text: "Johnson Living Room",
                      fontSize: 12,
                      color: Colors.black87),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.reply, color: Color(0xFFC8A95F), size: 12),
                    const SizedBox(width: 4),
                    TextInfo(
                        text: "Reply",
                        fontSize: 12,
                        color: Color(0xFFC8A95F),
                        fontWeight: FontWeight.w500),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

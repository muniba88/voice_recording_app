import 'package:flutter/material.dart';

// ✅ Project Card Widget (Image = 50% height)
class ProjectCard extends StatelessWidget {
  final double width;
  final String imagePath;
  final String title;

  const ProjectCard({
    super.key,
    required this.width,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 164,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Image takes 50% of the box height
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: SizedBox(
              width: width,
              height: 164 * 0.5, // 👈 50% of total height
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // ✅ Title Text (bottom 50%)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xFF2C2825),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

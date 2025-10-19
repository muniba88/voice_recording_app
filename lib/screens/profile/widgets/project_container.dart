import 'package:flutter/material.dart';
import '../../../constants/image_strings.dart';
import 'project_card.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Heading Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recent Projects",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  height: 28 / 18,
                  color: Color(0xFF2C2825),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/home',
                    arguments:
                        1, // 👈 open HomeScreen with Project tab selected
                  );
                },
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 20 / 14,
                    color: Color(0xFFC8A95F),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // ✅ Project Boxes (Responsive Row)
          LayoutBuilder(
            builder: (context, constraints) {
              double boxWidth = constraints.maxWidth > 700
                  ? (width - 80) / 2
                  : (width - 64) / 2;

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProjectCard(
                    width: boxWidth,
                    imagePath: AppImages.homeDecor02,
                    title: 'Modern Living Room',
                  ),
                  ProjectCard(
                    width: boxWidth,
                    imagePath: AppImages.homeDecor04,
                    title: 'Vibe Tea Area',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProjectSection extends StatelessWidget {
  final List<ProjectCardData> projects;

  const ProjectSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // responsive
      height: 336,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ----------- HEADER ROW -----------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Projects",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  height: 28 / 18,
                  color: Color(0xFF2C2825),
                ),
              ),
              Text(
                "View All",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xFFC8A95F),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          /// ----------- HORIZONTAL SCROLLABLE BOXES -----------
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: projects
                    .map((project) => Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: ProjectCard(data: project),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ---------------------------------------------------------------------------
/// DATA MODEL CLASS
/// ---------------------------------------------------------------------------
class ProjectCardData {
  final String imagePath;
  final String title;
  final String budgetUsed;
  final int percentUsed;
  final String date;
  final String status;

  ProjectCardData({
    required this.imagePath,
    required this.title,
    required this.budgetUsed,
    required this.percentUsed,
    required this.date,
    required this.status,
  });
}

/// ---------------------------------------------------------------------------
/// PROJECT CARD WIDGET
/// ---------------------------------------------------------------------------
class ProjectCard extends StatelessWidget {
  final ProjectCardData data;
  const ProjectCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 244,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ----------- IMAGE -----------
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                data.imagePath,
                width: 260,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),

            /// ----------- TITLE -----------
            Text(
              data.title,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 24 / 16,
                color: Color(0xFF2C2825),
              ),
            ),
            const SizedBox(height: 8),

            /// ----------- BUDGET ROW -----------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Budget",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 16 / 12,
                    color: Color(0xFFA8A390),
                  ),
                ),
                Text(
                  "${data.budgetUsed}% used",
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    height: 16 / 12,
                    color: Color(0xFF2C2825),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),

            /// ----------- PROGRESS BAR -----------
            Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E7EB),
                    borderRadius: BorderRadius.circular(9999),
                  ),
                ),
                Container(
                  height: 8,
                  width: (data.percentUsed / 100) * 236, // proportional width
                  decoration: BoxDecoration(
                    color: const Color(0xFFC8A95F),
                    borderRadius: BorderRadius.circular(9999),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            /// ----------- DATE + STATUS ROW -----------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Iconsax.calendar_1,
                      size: 16,
                      color: Color(0xFFA8A390),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      data.date,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 16 / 12,
                        color: Color(0xFFA8A390),
                      ),
                    ),
                  ],
                ),
                Text(
                  data.status,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    height: 16 / 12,
                    color: Color(0xFFC8A95F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

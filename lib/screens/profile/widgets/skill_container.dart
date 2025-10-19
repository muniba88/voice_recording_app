import 'package:flutter/material.dart';
import 'skill_box.dart';

class SkillContainer extends StatelessWidget {
  const SkillContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Heading
          const Text(
            "Skills",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              height: 28 / 18,
              color: Color(0xFF2C2825),
            ),
          ),

          const SizedBox(height: 12),

          // ✅ Responsive Skill Boxes
          Wrap(
            spacing: 8, // space between boxes horizontally
            runSpacing: 8, // space between rows
            children: const [
              SkillBox(text: "Space Planning"),
              SkillBox(text: "Color Theory"),
              SkillBox(text: "3D Visualization"),
              SkillBox(text: "Sustainable Design"),
              SkillBox(text: "Project Management"),
              SkillBox(text: "Client Relations"),
            ],
          ),
        ],
      ),
    );
  }
}

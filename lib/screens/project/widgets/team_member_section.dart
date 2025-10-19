import 'package:flutter/material.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'package:recoring_app/screens/project/widgets/team_member_item_avatar.dart';
import 'package:recoring_app/screens/project/widgets/team_member_item_moreavatar.dart';
import 'package:recoring_app/screens/team_member/team_member_screen.dart';

class TeamMemberSection extends StatelessWidget {
  const TeamMemberSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsets.only(right: 24, bottom: 24, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Heading
          const Text(
            "Team Members",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 24 / 16,
              color: Color(0xFF2C2825),
            ),
          ),
          const SizedBox(height: 16),

          // 🔹 Avatars Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Avatars group
              SizedBox(
                width: 180,
                height: 40,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      child: AvatarItem(imagePath: AppImages.profile01),
                    ),
                    Positioned(
                      left: 28,
                      child: AvatarItem(imagePath: AppImages.profile02),
                    ),
                    Positioned(
                      left: 56,
                      child: AvatarItem(imagePath: AppImages.profile03),
                    ),
                    Positioned(
                      left: 84,
                      child: AvatarItem(imagePath: AppImages.profile04),
                    ),
                    Positioned(
                      left: 112,
                      child: MoreAvatarItem(),
                    ),
                  ],
                ),
              ),
// 🔸 "View All" text (clickable)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TeamMemberScreen(),
                    ),
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
        ],
      ),
    );
  }
}

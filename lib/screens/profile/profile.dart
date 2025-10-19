import 'package:flutter/material.dart';
import '../../common/second_custom_appbar.dart';
import 'widgets/bar_container.dart';
import 'widgets/personal_information_container.dart';
import 'widgets/project_container.dart';
import 'widgets/skill_container.dart';
import 'widgets/top_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const SecondCustomAppBar(title: 'Profile', showEditIcon: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Top section
            TopSection(width: width),

            // ✅ Stats bar
            BarContainer(width: width),

            // ✅ Professional Information Section
            PersonalInformationContainer(width: width),

            // ✅ Skills Section
            const SkillContainer(),

            // ✅ Recent Projects Section
            ProjectContainer(width: width),
          ],
        ),
      ),
    );
  }
}

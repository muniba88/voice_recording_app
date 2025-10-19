import 'package:flutter/material.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'widgets/search_and_filter_box.dart';
import 'widgets/team_member_box.dart';
import 'widgets/top_heading_container.dart';

class TeamMemberScreen extends StatelessWidget {
  const TeamMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const CustomAppBar(
        title: "",
        subtitle: "",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🟢 Top Heading Container (dynamic height)
            TopHeadingContainer(width: width),

            // 🟢 Search and Filter Row Container
            SearchAndFilterBox(width: width),

            // 🟢 Team Member Boxes (Reusable)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TeamMemberBox(
                    imagePath: AppImages.profile01,
                    name: 'John Smith',
                    role: 'Project Manager',
                  ),
                  TeamMemberBox(
                    imagePath: AppImages.profile02,
                    name: 'Emma Johnson',
                    role: 'UI Designer',
                  ),
                  TeamMemberBox(
                    imagePath: AppImages.profile03,
                    name: 'Alex Brown',
                    role: 'Frontend Dev',
                  ),
                  TeamMemberBox(
                    imagePath: AppImages.profile04,
                    name: 'Sophia Lee',
                    role: 'Backend Dev',
                  ),
                  TeamMemberBox(
                    imagePath: AppImages.profile05,
                    name: 'Liam Davis',
                    role: 'QA Engineer',
                  ),
                  TeamMemberBox(
                    imagePath: AppImages.profile06,
                    name: 'Ava Wilson',
                    role: 'Mobile Dev',
                  ),
                  TeamMemberBox(
                    imagePath: AppImages.profile07,
                    name: 'Noah Clark',
                    role: 'Product Owner',
                  ),
                  TeamMemberBox(
                    imagePath: AppImages.profile08,
                    name: 'Olivia Lewis',
                    role: 'Data Analyst',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

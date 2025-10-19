import 'package:flutter/material.dart';
import 'package:recoring_app/screens/project/widgets/budget_container.dart';
import 'package:recoring_app/screens/project/widgets/heading_container.dart';
import 'package:recoring_app/screens/project/widgets/image_section.dart';
import 'package:recoring_app/screens/project/widgets/milestone_container.dart';
import 'package:recoring_app/screens/project/widgets/team_member_section.dart';
import '../kitchen_renovation/kitchen_renovation.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  int selectedIndex = 0;
  final List<String> tabs = ["Overview", "Tasks", "Materials"];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Top Navigation Bar
            Container(
              width: width,
              height: 47,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(tabs.length, (index) {
                  final bool isSelected = selectedIndex == index;

                  final textPainter = TextPainter(
                    text: TextSpan(
                      text: tabs[index],
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    textDirection: TextDirection.ltr,
                  )..layout();

                  double textWidth = textPainter.width;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });

                      // ✅ Navigate to KitchenRenovationScreen when "Tasks" is clicked
                      if (tabs[index] == "Tasks") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const KitchenRenovationScreen(),
                          ),
                        );
                      }
                    },
                    child: SizedBox(
                      height: 47,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Center(
                            child: Text(
                              tabs[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 20 / 14,
                                color: isSelected
                                    ? const Color(0xFFC8A95F)
                                    : const Color(0xFF2C2825),
                              ),
                            ),
                          ),
                          if (isSelected)
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: textWidth * 1.03,
                                height: 2,
                                color: const Color(0xFFC8A95F),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),

            // ✅ Image Section
            ImageSection(width: width),

            // ✅ Heading Container
            HeadingContainer(width: width),

            // ✅ Budget Container
            BudgetContainer(width: width),

            const SizedBox(height: 16),

            // ✅ Milestones Section
            const MilestoneContainer(),

            // ✅ Team Members Section
            const TeamMemberSection(),
          ],
        ),
      ),
    );
  }
}

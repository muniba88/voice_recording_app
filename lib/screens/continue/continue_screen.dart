import 'package:flutter/material.dart';
import 'package:recoring_app/common/box_container.dart';
import 'package:recoring_app/common/button.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/constants/colors.dart';
import 'package:recoring_app/screens/home/home_screen.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({super.key});

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // ✅ Responsive scaling
    double scale = screenWidth < 600 ? 1 : (screenWidth < 900 ? 1.2 : 1.4);
    final double horizontalPadding = screenWidth > 600 ? 32 : 24;
    final double maxContentWidth = screenWidth > 600 ? 500 : double.infinity;

    return Scaffold(
      resizeToAvoidBottomInset: true, // ✅ avoids overflow when keyboard opens
      appBar: const CustomAppBar(title: "", subtitle: ""),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: 24,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 600,
                    minHeight: constraints.maxHeight, // ✅ full height usage
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Heading
                        Text(
                          "Select your specification",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 24 * scale / 1.2,
                            height: 32 / 24,
                          ),
                        ),
                        const SizedBox(height: 8),

                        /// Sub Heading
                        Text(
                          "Choose the area that best describes your expertise",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 16 * scale / 1.2,
                            height: 24 / 16,
                            color: AppColors.label,
                          ),
                        ),
                        const SizedBox(height: 32),

                        /// Box Options
                        BoxContainer(
                          icon: Icons.home_outlined,
                          heading: "Home",
                          subheading: "This is your home page",
                          isSelected: selectedIndex == 0,
                          onTap: () => setState(() => selectedIndex = 0),
                          maxWidth: maxContentWidth,
                        ),
                        SizedBox(height: 16 * scale / 1.2),

                        BoxContainer(
                          icon: Icons.work_outline,
                          heading: "Work",
                          subheading: "Find your work related items here",
                          isSelected: selectedIndex == 1,
                          onTap: () => setState(() => selectedIndex = 1),
                          maxWidth: maxContentWidth,
                        ),
                        SizedBox(height: 16 * scale / 1.2),

                        BoxContainer(
                          icon: Icons.school_outlined,
                          heading: "Education",
                          subheading: "Learn and grow your skills",
                          isSelected: selectedIndex == 2,
                          onTap: () => setState(() => selectedIndex = 2),
                          maxWidth: maxContentWidth,
                        ),

                        const Spacer(),

                        /// Button
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: screenHeight * 0.02), // ✅ bottom space
                          child: CommonButton(
                            text: "Continue",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

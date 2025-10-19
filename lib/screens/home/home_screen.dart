import 'package:flutter/material.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'package:recoring_app/screens/home/widgets/custom_bottom_navbar.dart';
import 'package:recoring_app/screens/home/widgets/project_section.dart';
import 'package:recoring_app/screens/home/widgets/task_section.dart';
import 'package:recoring_app/screens/messages/messages_screen.dart';
import 'package:recoring_app/screens/profile/profile.dart';
import 'package:recoring_app/screens/project/projectscreen.dart';
import 'package:recoring_app/screens/voice_note/tutorial_screen1.dart';

class HomeScreen extends StatefulWidget {
  final int initialIndex;

  const HomeScreen({super.key, this.initialIndex = 0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex; // ✅ Use passed index
  }

  /// List of screens to show based on selected nav item
  final List<Widget> _screens = [
    const _DashboardScreen(), // Home Dashboard
    const ProjectScreen(), // Project
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    const double bottomNavHeight = 70;
    const double micButtonSize = 60;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          backgroundColor: const Color(0xFFF9FAFB),
          body: SafeArea(
            bottom: false,
            child: _screens[selectedIndex],
          ),

          // ✅ Show bottom nav except for MessagesScreen (index 2) and ProfileScreen (index 3)
          bottomNavigationBar: (selectedIndex != 2 && selectedIndex != 3)
              ? CustomBottomNavBar(
                  currentIndex: selectedIndex,
                  onTap: (index) => setState(() => selectedIndex = index),
                )
              : null,
        ),

        /// ✅ Floating Mic Button
        if (selectedIndex == 0 || selectedIndex == 2)
          Positioned(
            bottom: bottomNavHeight * 0.8,
            right: 24,
            child: Material(
              color: const Color(0xFFC8A95F),
              shape: const CircleBorder(),
              elevation: 4,
              shadowColor: const Color(0x33000000),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VoiceNotesScreen()),
                  );
                },
                child: SizedBox(
                  width: micButtonSize,
                  height: micButtonSize,
                  child: const Icon(
                    Icons.mic,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

/// ✅ Separate Dashboard Screen for clarity
class _DashboardScreen extends StatelessWidget {
  const _DashboardScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Header
        Container(
          width: double.infinity,
          height: 84,
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x1A000000),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
            border: const Border(
              bottom: BorderSide(
                color: Color(0xFFE5E7EB),
                width: 1,
              ),
            ),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, Sarah",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  height: 1.3,
                  color: Color(0xFF2C2825),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Welcome to your dashboard",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.4,
                  color: Color(0xFFA8A390),
                ),
              ),
            ],
          ),
        ),

        /// Scrollable body
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProjectSection(
                  projects: [
                    ProjectCardData(
                      imagePath: AppImages.homeDecor01,
                      title: 'Mobile App Redesign',
                      budgetUsed: '60',
                      percentUsed: 60,
                      date: '12 Oct 2025',
                      status: 'In Progress',
                    ),
                    ProjectCardData(
                      imagePath: AppImages.homeDecor02,
                      title: 'Website Upgrade',
                      budgetUsed: '80',
                      percentUsed: 80,
                      date: '08 Oct 2025',
                      status: 'Completed',
                    ),
                  ],
                ),
                const TasksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

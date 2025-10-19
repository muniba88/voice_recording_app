import 'package:flutter/material.dart';
import 'package:recoring_app/screens/home/widgets/task_box.dart';

class TasksSection extends StatefulWidget {
  const TasksSection({super.key});

  @override
  State<TasksSection> createState() => _TasksSectionState();
}

class _TasksSectionState extends State<TasksSection> {
  int selectedIndex = 0;
  final List<String> tabs = ["Today", "Upcoming", "Completed"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ---------- HEADER ----------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Tasks",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  height: 28 / 18,
                  color: Color(0xFF2C2825),
                ),
              ),
              Text(
                "Add New",
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
          const SizedBox(height: 12),

          /// ---------- TAB ROW ----------
          Container(
            height: 31,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFE5E7EB),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: List.generate(tabs.length, (index) {
                final bool isSelected = selectedIndex == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedIndex = index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          tabs[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 20 / 14,
                            color: isSelected
                                ? const Color(0xFF2C2825)
                                : const Color(0xFFA8A390),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Container(
                          height: 2,
                          color: isSelected
                              ? const Color(0xFFC8A95F)
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 16),

          /// ---------- TASK CARDS ----------
          Column(
            children: const [
              TaskCard(
                title: "Select paint colors",
                subtitle: "Living Room Project",
                statusText: "High",
                rightSubtitle: "Today, 2:00 PM",
                statusBgColor: Color(0xFFFFE8CC),
                statusTextColor: Color(0xFFFF9500),
                avatarBorderColor: Color(0xFFC8A95F),
              ),
              SizedBox(height: 16),
              TaskCard(
                title: "App testing phase 2",
                subtitle: "Tomorrow, 02:00 PM - Office",
                statusText: "Upcoming",
                rightSubtitle: "Today, 2:00 PM",
                statusBgColor: Color(0xFFD9E9FF),
                statusTextColor: Color(0xFF007AFF),
                avatarBorderColor: Color(0xFFC8A95F),
              ),
              SizedBox(height: 16),
              TaskCard(
                title: "Write project report",
                subtitle: "Oct 10, 10:00 AM",
                statusText: "Pending",
                rightSubtitle: "Today, 2:00 PM",
                statusBgColor: Color(0xFFD9E9FF),
                statusTextColor: Color(0xFF007AFF),
                avatarBorderColor: Color(0xFFC8A95F),
              ),
              SizedBox(height: 16),
              TaskCard(
                title: "Code review session",
                subtitle: "Oct 11, 03:00 PM",
                statusText: "Review",
                rightSubtitle: "Today, 2:00 PM",
                statusBgColor: Color(0xFFE5E7EB),
                statusTextColor: Color(0xFF2C2825),
                avatarBorderColor: Color(0xFFC8A95F),
              ),
              SizedBox(height: 16),
              TaskCard(
                title: "Team retrospective",
                subtitle: "Oct 12, 05:00 PM",
                statusText: "Completed",
                rightSubtitle: "Today, 2:00 PM",
                statusBgColor: Color(0xFFC8A95F),
                statusTextColor: Colors.white,
                avatarBorderColor: Color(0xFFC8A95F),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

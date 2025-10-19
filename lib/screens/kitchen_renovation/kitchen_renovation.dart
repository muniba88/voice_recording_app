import 'package:flutter/material.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/screens/kitchen_renovation/widgets/stat_box.dart';
import 'package:recoring_app/screens/kitchen_renovation/widgets/tab_text.dart';
import 'package:recoring_app/screens/kitchen_renovation/widgets/task_box.dart';
import 'package:recoring_app/screens/kitchen_renovation/widgets/task_box2.dart';

class KitchenRenovationScreen extends StatelessWidget {
  const KitchenRenovationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Kitchen Renovation",
        subtitle: "Plan your workflow",
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        // 👈 wrap with scroll
        padding: const EdgeInsets.only(bottom: 16), // niche thoda space
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 📦 Fixed Box under AppBar
            Container(
              width: double.infinity,
              height: 60.09,
              padding: const EdgeInsets.fromLTRB(15.57, 7.78, 15.62, 8.68),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Color(0xFFA8A390), width: 1),
                  bottom: BorderSide(color: Color(0xFFA8A390), width: 1),
                ),
              ),
              child: Container(
                height: 43.62,
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF8F0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TabText("Spaces"),
                    const TabText("Materials"),
                    const TabText("Vendors"),
                    Container(
                      height: 35.62,
                      padding: const EdgeInsets.symmetric(
                          vertical: 7.15, horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFFC8A95F),
                          width: 1,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Tasks",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.64,
                            height: 19.49 / 13.64,
                            color: Color(0xFF2C2825),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            /// 📦 Responsive Row with 2 Stat Boxes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: const [
                  Expanded(
                    flex: 1,
                    child: StatBox(
                      value: "8",
                      valueColor: Color(0xFFEA580C),
                      label: "Total Tasks",
                      icon: Icons.task_outlined,
                      iconColor: Color(0xFFB29952),
                      avatarColor: Color(0x33D4AF37),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 1,
                    child: StatBox(
                      value: "3",
                      valueColor: Color(0xFFEA580C),
                      label: "Pending",
                      icon: Icons.watch_later_outlined,
                      iconColor: Color(0xFFEA580C),
                      avatarColor: Color(0xFFFFEDD5),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            /// Buttons Row
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  /// 🔹 All Tasks Button
                  SizedBox(
                    width: 89.14,
                    height: 35.62,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB29952),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(42.36),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "All Tasks",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 13.64,
                          height: 19.49 / 13.64,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  /// 🔹 Pending Button
                  SizedBox(
                    width: 86.89,
                    height: 35.62,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Color(0xFFE5E7EB)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Pending",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 13.64,
                          height: 19.49 / 13.64,
                          color: Color(0xFF2C2825),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  /// 🔹 In Progress Button
                  SizedBox(
                    width: 106.89,
                    height: 35.62,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Color(0xFFE5E7EB)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "In Progress",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 13.64,
                          height: 19.49 / 13.64,
                          color: Color(0xFF2C2825),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            /// Task Boxes
            TaskBox(
              heading: "Order marble samples",
              statusText: "Pending",
              dotColor: Color(0xFFFB923C), // dot background
              assignee: "Unassigned",
              assigneeColor: Color(0xFF9CA3AF),
              dueDate: "Not set",
              dueDateColor: Color(0xFF9CA3AF),
            ),
            const SizedBox(height: 10),
            TaskBox02(
              heading: "Install new lighting fixtures",
              statusText: "Completed",
              dotColor: Color(0xFF4ADE80),
              assignee: "Sarah Johnson",
              assigneeColor: Color(0xFF2C2825),
              dueDate: "Mar 8, 2024",
              dueDateColor: Color(0xFF2C2825),
            ),
          ],
        ),
      ),
    );
  }
}

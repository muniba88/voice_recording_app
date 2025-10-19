import 'package:flutter/material.dart';

class TaskBox02 extends StatelessWidget {
  final String heading; // Top heading
  final String statusText; // Dot ke sath text
  final Color dotColor; // Dot color
  final String assignee; // Right side assignee text
  final String dueDate; // Right side due date text

  // ✅ New color options
  final Color assigneeColor;
  final Color dueDateColor;

  const TaskBox02({
    super.key,
    required this.heading,
    required this.statusText,
    required this.dotColor,
    required this.assignee,
    required this.dueDate,
    this.assigneeColor = const Color(0xFF2C2825),
    this.dueDateColor = const Color(0xFF2C2825),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16), // ✅ All edges 16px
      child: Container(
        width: double.infinity, // ✅ Responsive width
        height: 197.73,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE1E1D5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔹 Heading + More Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    fontSize: 15.59,
                    height: 23.39 / 15.59,
                    color: Color(0xFF2C2825),
                  ),
                ),
                const Icon(Icons.more_horiz,
                    color: Color(0xFF9CA3AF), size: 18),
              ],
            ),

            const SizedBox(height: 12),

            /// 🔹 Dot + Status
            Row(
              children: [
                CircleAvatar(radius: 4, backgroundColor: dotColor),
                const SizedBox(width: 8),
                Text(
                  statusText,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 13.64,
                    height: 19.49 / 13.64,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            /// 🔹 Assignee Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Assignee:",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 13.64,
                    height: 19.49 / 13.64,
                    color: Color(0xFF2C2825),
                  ),
                ),
                Text(
                  assignee,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 13.64,
                    height: 19.49 / 13.64,
                    color: assigneeColor,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            /// 🔹 Due Date Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Due Date:",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 13.64,
                    height: 19.49 / 13.64,
                    color: Color(0xFF2C2825),
                  ),
                ),
                Text(
                  dueDate,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 13.64,
                    height: 19.49 / 13.64,
                    color: dueDateColor,
                  ),
                ),
              ],
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity, // ✅ Responsive width
              height: 33.93,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDCFCE7), // ✅ Background
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.33,
                    horizontal: 115.55,
                  ),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.check,
                  size: 14,
                  color: Color(0xFF15803D), // ✅ Green check icon
                ),
                label: const Text(
                  "Completed",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    fontSize: 13.64,
                    height: 19.49 / 13.64,
                    color: Color(0xFF15803D), // ✅ Text color
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

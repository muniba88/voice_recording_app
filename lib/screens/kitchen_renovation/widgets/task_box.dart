import 'package:flutter/material.dart';

class TaskBox extends StatelessWidget {
  final String heading;
  final String statusText;
  final Color dotColor;
  final String assignee;
  final String dueDate;
  final Color assigneeColor;
  final Color dueDateColor;

  const TaskBox({
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE1E1D5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔹 Heading Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    heading,
                    style: const TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      fontSize: 15.59,
                      color: Color(0xFF2C2825),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.more_horiz,
                    color: Color(0xFF9CA3AF), size: 18),
              ],
            ),

            const SizedBox(height: 12),

            /// 🔹 Status
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
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            /// 🔹 Assignee
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Assignee:",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13.64,
                    color: Color(0xFF2C2825),
                  ),
                ),
                Flexible(
                  child: Text(
                    assignee,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 13.64,
                      fontStyle: FontStyle.italic,
                      color: assigneeColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            /// 🔹 Due Date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Due Date:",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13.64,
                    color: Color(0xFF2C2825),
                  ),
                ),
                Text(
                  dueDate,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13.64,
                    fontStyle: FontStyle.italic,
                    color: dueDateColor,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// 🔹 Buttons Row (Responsive)
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFFA8A390)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.person,
                        color: Color(0xFF2C2825), size: 18),
                    label: const Text(
                      "Assign",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 13.64,
                        color: Color(0xFF2C2825),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB29952),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    onPressed: () {},
                    icon:
                        const Icon(Icons.check, size: 14, color: Colors.white),
                    label: const Text(
                      "Mark Done",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 13.64,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

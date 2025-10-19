import 'package:flutter/material.dart';
import 'notification_container_item.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 347,
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔸 Heading
          const Text(
            "Notifications",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5,
              color: Color(0xFFC8A95F),
            ),
          ),
          const SizedBox(height: 16),

          // 🔹 4 Notification Items
          NotificationItem(
            title: "Project Updates",
            description: "Get notified about project changes",
            initialValue: true,
          ),
          NotificationItem(
            title: "Client Messages",
            description: "Messages from clients and collaborators",
            initialValue: true,
          ),
          NotificationItem(
            title: "Task Reminders",
            description: "Upcoming deadlines and tasks",
            initialValue: false,
          ),
          NotificationItem(
            title: "Team Activity",
            description: "Updates about team members",
            initialValue: false,
          ),
        ],
      ),
    );
  }
}

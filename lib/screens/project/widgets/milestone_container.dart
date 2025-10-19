import 'package:flutter/material.dart';
import 'package:recoring_app/screens/project/widgets/milestone_item.dart';

class MilestoneContainer extends StatelessWidget {
  const MilestoneContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Milestones",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 24 / 16,
              color: Color(0xFF2C2825),
            ),
          ),
          const SizedBox(height: 16),

          // ✅ Milestone Items Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MilestoneItem(
                title: "Planning",
                date: "May 5 - May 20",
                description: "All planning tasks have been completed",
                showConnector: true,
                isCompleted: true,
              ),
              const SizedBox(height: 24),
              MilestoneItem(
                title: "Implementation",
                date: "May 25 - July 15",
                description: "Currently in progress, 4 tasks remaining",
                showConnector: true,
                isCompleted: true,
              ),
              const SizedBox(height: 24),
              MilestoneItem(
                title: "Final Review",
                date: "July 20 - August 5",
                description: "Not started yet",
                showConnector: false,
                isCompleted: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

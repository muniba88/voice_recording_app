import 'package:flutter/material.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'package:recoring_app/screens/messages/widgets/timeline_bar.dart';

import '../../common/second_custom_appbar.dart';
import 'widgets/activity_filter_bar.dart';
import 'widgets/approved_container.dart';
import 'widgets/assigned_container.dart';
import 'widgets/commented_container.dart';
import 'widgets/madechangeto_container.dart';
import 'widgets/sharedidea_container.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SecondCustomAppBar(title: "Activity Feed"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ActivityFilterBar(
              selectedIndex: selectedIndex,
              onSelected: (index) => setState(() => selectedIndex = index),
            ),
            const SizedBox(height: 16),
            // Timeline + Containers
            Column(
              children: [
                // Commented
                TimelineRow(
                  child: CommentedContainer(
                    name: "Sarah Johnson",
                    time: "Today, 10:32 AM",
                    comment:
                        "I love the material choices for the living room! Could we see a few more options for the accent pillows?",
                  ),
                ),
                // Approved
                TimelineRow(
                  child: ApprovedContainer(
                    name: "Michael Chen",
                    time: "Today, 9:15 AM",
                    title: "Kitchen Color Scheme",
                    subtitle: "Final color palette approved",
                    tag: "Peterson Kitchen Remodel",
                  ),
                ),
                // Made Changes
                TimelineRow(
                  child: MadeChangesContainer(
                    name: "Emily Zhang",
                    time: "Yesterday, 4:45 PM",
                    title: "Master Bedroom Layout",
                    subtitle: "Updated furniture positioning",
                    tag: "Wilson Residence",
                  ),
                ),
                // Shared Idea
                TimelineRow(
                  child: SharedIdeaContainer(
                    name: "Alex Morgan",
                    time: "Yesterday, 1:20 PM",
                    ideaText:
                        "I found this amazing pendant light that would work perfectly over the dining table. Check out the link I sent!",
                    imageAsset: AppImages.homeDecor02,
                    icon: Icons.lightbulb,
                    iconText: "Lighting Idea",
                    tag: "Reynolds Dining Room",
                  ),
                ),
                // Assigned
                TimelineRow(
                  child: AssignedContainer(
                    name: "Jennifer Lee",
                    time: "June 10, 3:25 PM",
                    title: "David Wilson",
                    subtitle: "Assigned as project architect",
                    tag: "Martinez Home Renovation",
                    rightAvatarAsset: AppImages.profile07,
                  ), // last item, no bottom line
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recoring_app/screens/messages/widgets/filter_buttons.dart';

class ActivityFilterBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelected;

  const ActivityFilterBar({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 78,
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FilterButton(
            text: "All Activities",
            isSelected: selectedIndex == 0,
            onTap: () => onSelected(0),
          ),
          FilterButton(
            text: "Changes",
            isSelected: selectedIndex == 1,
            onTap: () => onSelected(1),
          ),
          FilterButton(
            text: "Approvals",
            isSelected: selectedIndex == 2,
            onTap: () => onSelected(2),
          ),
        ],
      ),
    );
  }
}

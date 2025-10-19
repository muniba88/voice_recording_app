import 'package:flutter/material.dart';

class TimelineRow extends StatelessWidget {
  final Widget child;
  final double leftPadding;
  final double gap;

  const TimelineRow({
    super.key,
    required this.child,
    this.leftPadding = 48.0,
    this.gap = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      // adapts to tallest child
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left timeline: circle + vertical line
          Padding(
            padding: EdgeInsets.only(left: leftPadding),
            child: Column(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Color(0xFFC8A95F),
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 1,
                    color: const Color(0xFFC8A95F),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: gap),
          // Right container
          Expanded(child: child),
        ],
      ),
    );
  }
}

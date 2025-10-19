import 'package:flutter/material.dart';

class TopHeadingContainer extends StatelessWidget {
  const TopHeadingContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Team Members",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24,
              height: 32 / 24,
              color: Color(0xFF2C2825),
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Manage your project collaborators",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 20 / 14,
              color: Color(0xFFA8A390),
            ),
          ),
        ],
      ),
    );
  }
}

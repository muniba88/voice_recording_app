import 'package:flutter/material.dart';

class LiveTranslationBox extends StatelessWidget {
  const LiveTranslationBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              /// Heading
              Text(
                "Live Translation",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600, // Semi Bold
                  fontSize: 15.06,
                  height: 22.6 / 15.06, // line height
                  color: Color(0xFF111827), // heading color
                ),
              ),

              /// Green Dot
              CircleAvatar(
                radius: 5.6, // 11.25px diameter / 2
                backgroundColor: Color(0xFF22C55E), // green dot
              ),
            ],
          ),

          SizedBox(height: 12),

          /// Body text
          const Text(
            "Today we are going to discuss about interior design materials...",
            style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w400, // Regular
              fontSize: 15.06,
              height: 24.48 / 15.06, // line height
              color: Color(0xFF374151), // gray text
            ),
          ),
        ],
      ),
    );
  }
}

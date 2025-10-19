import 'package:flutter/material.dart';

class RecordingActiveBox extends StatelessWidget {
  const RecordingActiveBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFEF2F2), // background
        border: Border.all(
          color: const Color(0xFFFECACA), // border
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Circle Avatar (Row height ke hisaab se)
          Container(
            width: 64, // row height ka approx double (24+20 = 44 + padding)
            height: 64,
            decoration: const BoxDecoration(
              color: Color(0xFFFECACA),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.mic,
              color: Color(0xFFDC2626),
              size: 28,
            ),
          ),
          const SizedBox(width: 16),

          /// Heading + Paragraph
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                /// Heading
                Text(
                  "Recording Active",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600, // Semi Bold
                    fontSize: 15.59,
                    height: 23.39 / 15.59, // line-height ÷ font-size
                    color: Color(0xFF7F1D1D),
                  ),
                ),
                SizedBox(height: 6),

                /// Subheading
                Text(
                  "Speak naturally about your project",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400, // Regular
                    fontSize: 13.64,
                    height: 19.49 / 13.64, // line-height ÷ font-size
                    color: Color(0xFFB91C1C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

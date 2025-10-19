import 'package:flutter/material.dart';

class AudioLevelBox extends StatelessWidget {
  const AudioLevelBox({
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
        children: [
          /// Heading
          const Text(
            "Audio Level",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w600, // Semi Bold
              fontSize: 16,
              height: 23.39 / 16, // line height
              color: Color(0xFF111827), // heading color
            ),
          ),

          const SizedBox(height: 12),

          /// Voice lines (dummy waveform bars)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              20,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                width: 7.78, // from design
                height: (index % 2 == 0 ? 19.91 : 35).toDouble(), // alternating
                decoration: BoxDecoration(
                  color: const Color(0xFFD4AF37), // golden bars
                  borderRadius:
                      BorderRadius.circular(52950.48), // fully rounded
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          /// Duration
          const Text(
            "Duration: 00:43",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w400, // Regular
              fontSize: 12,
              height: 19.49 / 12, // line height
              color: Color(0xFF6B7280), // gray text
            ),
          ),
        ],
      ),
    );
  }
}

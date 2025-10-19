import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/custom_toggle_button.dart';

class VoiceCalibrationContainer extends StatelessWidget {
  const VoiceCalibrationContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 226,
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔸 Heading
          const Text(
            "Voice Calibration",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5,
              color: Color(0xFFC8A95F),
            ),
          ),
          const SizedBox(height: 16),

          // 🔸 Inner White Box
          Container(
            width: width,
            height: 186,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Row with mic + title + toggle
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Mic Subbox
                    Container(
                      width: 38.1,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0x1AD4AF37),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Iconsax.microphone_2,
                        size: 20,
                        color: Color(0xFFC8A95F),
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Title Text
                    const Expanded(
                      child: Text(
                        "Calibrate Voice Recognition",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.5,
                          color: Color(0xFF2C2825),
                        ),
                      ),
                    ),

                    // 🔘 Custom Toggle Button (default ON)
                    const CustomToggleButton(initialValue: true),
                  ],
                ),

                const SizedBox(height: 12),

                // 🔹 Description Text
                const Text(
                  "Improve voice command accuracy for your specific accent and speech patterns",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.4,
                    color: Color(0xFF2C2825),
                  ),
                ),

                const Spacer(),

                // 🔹 Recalibrate Button
                Container(
                  width: 113,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFC8A95F), width: 1),
                  ),
                  child: const Center(
                    child: Text(
                      "Recalibrate",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.4,
                        color: Color(0xFFC8A95F),
                      ),
                    ),
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

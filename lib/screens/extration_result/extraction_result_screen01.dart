import 'package:flutter/material.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/screens/extration_result/extraction_result_screen02.dart';

class ExtractionResult01Screen extends StatelessWidget {
  const ExtractionResult01Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: "Extraction Result",
        subtitle: "Your processed voice note",
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            /// 🔲 Voice note + Play button box
            Container(
              width: double.infinity,
              height: 71.52,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFE1E1D5),
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  /// 🎵 Voice Note Lines
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        18,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            width: 3.25,
                            height: (index % 2 == 0 ? 19.91 : 35).toDouble(),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD4AF37),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// 🔘 Play Button
                  Container(
                    width: 42.02,
                    height: 42.02,
                    decoration: const BoxDecoration(
                      color: Color(0xFFC8A95F),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            /// 🔘 Custom Button (Design Spec)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExtractionResult02Screen(),
                  ),
                );
              },
              child: Container(
                width: double.infinity, // ✅ Responsive width
                height: 46,
                decoration: BoxDecoration(
                  color: const Color(0xFFC8A95F), // Background color
                  borderRadius: BorderRadius.circular(8), // Border radius
                ),
                child: const Center(
                  child: Text(
                    "Confirm All & Continue",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600, // Semi Bold
                      fontSize: 15.59,
                      height: 23.39 / 15.59, // ✅ line-height ratio
                      color: Colors.white, // White text
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

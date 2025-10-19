import 'package:flutter/material.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/screens/ai_processing/widgets/circle.dart';
import 'package:recoring_app/screens/ai_processing/widgets/progress_line.dart';
import 'package:recoring_app/screens/ai_processing/widgets/status_box.dart';
import 'package:recoring_app/screens/ai_processing/widgets/subheading.dart';
import 'package:recoring_app/screens/extration_result/extraction_result_screen01.dart';
import 'package:recoring_app/screens/voice_note/widgets/heading.dart';

class AiProcessingScreen extends StatefulWidget {
  const AiProcessingScreen({super.key});

  @override
  State<AiProcessingScreen> createState() => _AiProcessingScreenState();
}

class _AiProcessingScreenState extends State<AiProcessingScreen> {
  @override
  void initState() {
    super.initState();

    // ✅ 2 sec baad Result Screen par le jao
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ExtractionResult01Screen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ Custom AppBar (No Back Arrow)
      appBar: CustomAppBar(
        showBackArrow: false,
        title: "AI Processing",
        subtitle: "Analyzing your notes",
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// 🔵 3x3 Circles Grid
            SizedBox(
              width: 80,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleDot(
                          size: 18.58, opacity: 0.63, color: Color(0xFFC8A95F)),
                      SizedBox(width: 8),
                      CircleDot(
                          size: 17.68, opacity: 0.48, color: Color(0xFFC8A95F)),
                      SizedBox(width: 8),
                      CircleDot(
                          size: 17.05, opacity: 0.37, color: Color(0xFFC8A95F)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (_) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: CircleDot(
                          size: 16.68,
                          opacity: 0.31,
                          color: Color(0xFFC8A95F),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleDot(
                          size: 17.47, opacity: 0.45, color: Color(0xFFC8A95F)),
                      SizedBox(width: 8),
                      CircleDot(
                          size: 18.37, opacity: 0.59, color: Color(0xFFC8A95F)),
                      SizedBox(width: 8),
                      CircleDot(
                          size: 19.27, opacity: 0.75, color: Color(0xFFC8A95F)),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// 📝 Heading
            Heading(),

            const SizedBox(height: 12),

            /// 📝 Subheading
            SubHeading(),

            const SizedBox(height: 28),

            /// 📦 4 Status Boxes
            Column(
              children: [
                StatusBox(
                  borderColor: const Color(0xFFC8A95F),
                  avatarColor: const Color(0xFFC8A95F),
                  icon: Icons.check,
                  iconColor: Colors.white,
                  heading: "Analyzing content",
                  subheading: "Completed",
                  opacity: 1,
                ),
                const SizedBox(height: 12),
                StatusBox(
                  borderColor: const Color(0xFFE1E1D5),
                  avatarColor: const Color(0xFFC8A95F),
                  icon: Icons.circle,
                  iconColor: Colors.white,
                  heading: "Extracting entities",
                  subheading: "In progress...",
                  opacity: 0.8,
                ),
                const SizedBox(height: 12),
                StatusBox(
                  borderColor: const Color(0xFFE1E1D5),
                  avatarColor: Colors.white,
                  avatarBorder: const Color(0xFFC8A95F),
                  icon: Icons.circle,
                  iconColor: const Color(0xFFC8A95F),
                  heading: "Structuring data",
                  subheading: "Pending",
                  opacity: 0.5,
                ),
                const SizedBox(height: 12),
                StatusBox(
                  borderColor: const Color(0xFFE1E1D5),
                  avatarColor: Colors.white,
                  avatarBorder: const Color(0xFFC8A95F),
                  icon: Icons.circle,
                  iconColor: const Color(0xFFC8A95F),
                  heading: "Finalizing results",
                  subheading: "Pending",
                  opacity: 0.5,
                ),
              ],
            ),

            const SizedBox(height: 24),

            /// ⏱ Processing Time
            const Text(
              "Processing time: ~30 seconds",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFFA8A390),
              ),
            ),

            const SizedBox(height: 12),

            /// 🔘 Progress Line
            ProgressLine(),
          ],
        ),
      ),
    );
  }
}

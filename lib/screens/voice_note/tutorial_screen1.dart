import 'package:flutter/material.dart';
import 'package:recoring_app/common/feature_box.dart';
import 'package:recoring_app/screens/recording/recording_screen.dart';
import 'package:recoring_app/screens/voice_note/widgets/heading.dart';
import 'package:recoring_app/screens/voice_note/widgets/info_box.dart';
import 'package:recoring_app/screens/voice_note/widgets/mic_avatar.dart';
import 'package:recoring_app/screens/voice_note/widgets/paragraph.dart';
import 'package:recoring_app/screens/voice_note/widgets/skip_button.dart';
import 'package:recoring_app/screens/voice_note/widgets/tips_box.dart';

class VoiceNotesScreen extends StatelessWidget {
  const VoiceNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    /// ✅ max content width (like Figma frame width)
    final double maxContentWidth = 380; // ~342 with breathing space
    final double horizontalPadding = screenWidth > 600 ? 32 : 20;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 16,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxContentWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Skip (top right)
                  Align(
                    alignment: Alignment.topRight,
                    child: SkipButton(),
                  ),

                  const SizedBox(height: 20),

                  /// Mic Avatar
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecordingScreen()),
                      );
                    },
                    child: const MicAvatar(),
                  ),

                  const SizedBox(height: 20),

                  /// Heading
                  const Heading(),

                  const SizedBox(height: 20),

                  /// Paragraph
                  const Paragraph(),

                  const SizedBox(height: 20),

                  /// Features Row + InfoBox
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          FeatureBox(
                            icon: Icons.task_alt,
                            title: "Tasks",
                            avatarBgColor: Color(0xFFDBEAFE),
                            iconColor: Color(0xFF2563EB),
                          ),
                          FeatureBox(
                            icon: Icons.construction,
                            title: "Materials",
                            avatarBgColor: Color(0xFFF3E8FF),
                            iconColor: Color(0xFF16A34A),
                          ),
                          FeatureBox(
                            icon: Icons.schedule,
                            title: "Schedule",
                            avatarBgColor: Color(0xFFD1FAE5),
                            iconColor: Color(0xFF9333EA),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      /// Info Box
                      InfoBox(),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// Tips Box
                  TipsBox(),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

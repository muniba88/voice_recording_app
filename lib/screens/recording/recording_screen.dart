import 'package:flutter/material.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/screens/ai_processing/ai_processing.dart';
import 'package:recoring_app/screens/recording/widgets/audio_level_box.dart';
import 'package:recoring_app/screens/recording/widgets/live_translation_box.dart';
import 'package:recoring_app/screens/recording/widgets/pause_and_stop_button.dart';
import 'package:recoring_app/screens/recording/widgets/recording_active_box.dart';

class RecordingScreen extends StatelessWidget {
  const RecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Responsive padding
    final horizontalPadding = screenWidth > 600 ? 32.0 : 16.0;
    final maxContentWidth = 700.0;

    return Scaffold(
      appBar: CustomAppBar(
          title: "Recording",
          subtitle: "Listening to your notes",
          showRecording: true),
      body: Center(
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
                /// 🔹 Box 1: Mic + Heading + Paragraph
                RecordingActiveBox(),

                const SizedBox(height: 20),

                /// 🔹 Box 2: Audio Level
                AudioLevelBox(),

                const SizedBox(height: 20),

                /// 🔹 Box 3: Live Translation
                LiveTranslationBox(),

                const SizedBox(height: 30),

                /// 🔹 Bottom Buttons
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    PauseAndStopButton(
                      icon: Icons.pause,
                      text: "Pause Recording",
                      backgroundColor: const Color(0xFFFFFFFF), // white
                      textColor: const Color(0xFF374151), // dark gray
                      onPressed: () {
                        // pause logic
                      },
                    ),
                    const SizedBox(height: 12),
                    PauseAndStopButton(
                      icon: Icons.stop,
                      text: "Stop & Save",
                      backgroundColor: const Color(0xFFC8A95F), // gold
                      textColor: const Color(0xFFFFFFFF), // white
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AiProcessingScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

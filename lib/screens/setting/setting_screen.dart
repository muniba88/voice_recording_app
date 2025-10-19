import 'package:flutter/material.dart';
import 'package:recoring_app/common/second_custom_appbar.dart';
import 'widgets/branding_container.dart';
import 'widgets/notification_container.dart';
import 'widgets/subscription_container.dart';
import 'widgets/voice_calibration_container.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const SecondCustomAppBar(title: "Settings"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Voice Calibration Container
            VoiceCalibrationContainer(width: width),

            // ✅ Notifications Container
            NotificationContainer(width: width),

            // Branding Container
            BrandingOptionsContainer(width: width),

            // Subscription Container
            SubscriptionContainer(width: width),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF9F9F9),
    );
  }
}

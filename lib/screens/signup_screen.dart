import 'package:flutter/material.dart';
import 'package:recoring_app/common/button.dart';
import 'package:recoring_app/constants/colors.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'package:recoring_app/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Logo Image (center of screen)
              /// Circular Logo with Background & Tint
              CircleAvatar(
                radius: 34,
                backgroundColor: Colors.black, // black background
                child: Image.asset(
                  AppImages.logo,
                  width: 34, // smaller so it fits inside
                  height: 34,
                  color: Colors.white, // tint to white
                  colorBlendMode: BlendMode.srcIn,
                ),
              ),

              const SizedBox(height: 32),

              /// Heading
              Text(
                "Hy Frida",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600, // SemiBold
                  fontSize: 32,
                  height: 48 / 32, // line-height ÷ font-size
                ),
              ),
              const SizedBox(height: 16),

              /// Subtext
              Text(
                "Voice-first interior design project manager",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400, // Regular
                  fontSize: 16,
                  height: 24 / 16,
                ),
              ),
              const SizedBox(height: 40),

              /// Sign Up Button
              CommonButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
              const SizedBox(height: 16),

              /// Login Button
              SizedBox(
                width: buttonWidth,
                height: 54,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1, color: AppColors.btnColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Log In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500, // Medium
                      fontSize: 16,
                      height: 24 / 16,
                      color: AppColors.btnColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),

              /// Footer Text
              Text(
                "by frida team",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300, // Light
                  fontSize: 12,
                  height: 16 / 12,
                  color: Colors.black54, // opacity 0.4
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

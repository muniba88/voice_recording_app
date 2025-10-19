import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CommonButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // ✅ Responsive width: 90% of available screen width
    final double buttonWidth = MediaQuery.of(context).size.width * 0.9;

    return SizedBox(
      width: buttonWidth,
      height: 54,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 24 / 16,
            color: AppColors.secbg,
          ),
        ),
      ),
    );
  }
}

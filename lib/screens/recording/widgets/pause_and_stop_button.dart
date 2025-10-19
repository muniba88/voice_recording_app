import 'package:flutter/material.dart';

/// ✅ Reusable Action Button
/// Custom Reusable Button
class PauseAndStopButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const PauseAndStopButton({
    super.key,
    required this.icon,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46, // 👈 fixed height
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        icon: Icon(icon, color: textColor),
        label: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500, // Medium
            fontSize: 15.59,
            height: 23.39 / 15.59, // 👈 line-height ratio
            letterSpacing: 0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText; // ✅ hint text
  final Widget? leftIcon; // ✅ left side icon/logo
  final Widget? rightIcon; // ✅ right side icon/logo
  final bool obscureText; // ✅ password ke liye

  const CustomTextField({
    super.key,
    required this.hintText,
    this.leftIcon,
    this.rightIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342, // ✅ fixed width
      height: 50, // ✅ fixed height
      child: TextField(
        obscureText: obscureText, // ✅ for password
        decoration: InputDecoration(
          prefixIcon: leftIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: leftIcon,
                )
              : null,
          suffixIcon: rightIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: rightIcon,
                )
              : null,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 24 / 16,
            color: Color(0xFF9CA3AF), // ✅ same as label color
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), // ✅ radius
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xFFE1E1D5), // ✅ border color
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
      ),
    );
  }
}

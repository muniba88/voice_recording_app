import 'package:flutter/material.dart';
import 'package:recoring_app/common/button.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/common/custom_textfield.dart';
import 'package:recoring_app/constants/colors.dart';
import 'package:recoring_app/screens/continue/continue_screen.dart'; // icons ke liye (pubspec.yaml me add karein)

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: CustomAppBar(),

      // body
      body: Center(
        child: Container(
          width: 390,
          height: 675,
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// Login & Signup toggle row
                Row(
                  children: [
                    /// Left side (Login)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 1.5, // line-height: 24px
                              color: AppColors.basicColor,
                            ),
                          ),
                          const SizedBox(
                              height: 4), // small gap between text and line
                          Container(
                            height: 2,
                            color: AppColors.btnColor, // Login line color
                          ),
                        ],
                      ),
                    ),

                    /// Right side (SignUp)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.5,
                              color: AppColors.basicColor,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            height: 1,
                            color: AppColors.border, // SignUp line color
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                /// Email label
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 20 / 14,
                        color: AppColors.basicColor,
                      ),
                    ),
                    const SizedBox(height: 5),

                    /// ✅ Email field
                    const CustomTextField(
                      hintText: "Enter your email",
                      leftIcon: Icon(Icons.email_outlined,
                          color: AppColors.label, size: 18),
                    ),

                    const SizedBox(height: 16),

                    // Password label
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 20 / 14,
                        color: AppColors.basicColor,
                      ),
                    ),
                    const SizedBox(height: 5),

                    /// ✅ Password field
                    CustomTextField(
                      hintText: "Enter your password",
                      leftIcon: const Icon(Icons.lock_outline,
                          color: AppColors.label),
                      rightIcon: const Icon(Icons.remove_red_eye,
                          color: AppColors.label),
                      obscureText: true,
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                /// Forget password
                SizedBox(
                  width: 342, // ✅ Figma width
                  height: 20, // ✅ Figma height
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      // ✅ opacity: 1 (default, par show karne ke liye wrap kiya hai)
                      opacity: 1,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero, // ✅ height control karega
                          padding: EdgeInsets.zero, // ✅ extra padding hatayi
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 20 / 14, // ✅ line-height: 20px
                            color: AppColors.btnColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                /// Login button
                CommonButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ContinueScreen(), // 👈 aapka dusra screen
                      ),
                    );
                  },
                ),

                const SizedBox(height: 24),

                /// Divider with text
                Row(
                  children: [
                    const Expanded(child: Divider(thickness: 1)),
                    SizedBox(
                      width: 113, // ✅ Figma width
                      height: 20, // ✅ Figma height
                      child: const Center(
                        child: Text(
                          "or continue with",
                          style: TextStyle(
                            fontFamily: "Poppins", // ✅ font-family
                            fontWeight: FontWeight.w400, // ✅ Regular
                            fontSize: 14, // ✅ font-size: 14px
                            height: 20 / 14, // ✅ line-height: 20px
                            color:
                                Color(0xFF6B7280), // ✅ background (text color)
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Expanded(child: Divider(thickness: 1)),
                  ],
                ),

                const SizedBox(height: 16),

                /// Google & Facebook buttons row
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2991/2991148.png", // Google logo
                            height: 20,
                          ),
                          label: const Text(
                            "Google",
                            style: TextStyle(
                              color: Color(0xFF2C2825), // ✅ #2C2825
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16), // gap between buttons
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/732/732221.png", // ✅ Microsoft logo
                            height: 20,
                          ),
                          label: const Text(
                            "Microsoft",
                            style: TextStyle(
                              color: Color(0xFF2C2825), // ✅ #2C2825
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Bottom text
                const SizedBox(height: 32),
                const Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      fontFamily: "Poppins", // ✅ font-family
                      fontWeight: FontWeight.w400, // ✅ Regular
                      fontSize: 14, // ✅ font-size: 14px
                      height: 20 / 14, // ✅ line-height: 20px
                      color: AppColors.basicColor, // default text color
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          fontFamily: "Poppins", // ✅ font-family
                          fontWeight: FontWeight.w500, // ✅ Medium
                          fontSize: 14, // ✅ font-size: 14px
                          height: 20 / 14, // ✅ line-height: 20px
                          color: AppColors.btnColor, // ✅ your button color
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

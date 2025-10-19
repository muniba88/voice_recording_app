import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/setting/setting_screen.dart'; // ✅ for pen icon

class SecondCustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final bool showEditIcon; // ✅ Ask whether to show the icon

  const SecondCustomAppBar({
    super.key,
    required this.title,
    this.showEditIcon = false, // default: don’t show
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 57,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 24, top: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ✅ Left title
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 22,
              height: 33 / 22,
              color: Color(0xFF2C2825),
            ),
          ),

          // ✅ Right Circle Avatar (optional)
          if (showEditIcon)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SettingScreen(), // 👈 your settings page
                    ),
                  );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xFFC8A95F),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Iconsax.edit, // pen icon
                    size: 14.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(57);
}

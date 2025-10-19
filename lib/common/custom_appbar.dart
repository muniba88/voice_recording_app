import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subtitle;
  final bool showRecording;
  final bool showBackArrow; // ✅ New property

  const CustomAppBar({
    super.key,
    this.title,
    this.subtitle,
    this.showRecording = false,
    this.showBackArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 67,
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,

      /// Show/hide back arrow
      leading: showBackArrow
          ? IconButton(
              icon: const Icon(Icons.arrow_back, size: 24),
              onPressed: () => Navigator.pop(context),
            )
          : Container(), // ✅ Prevents auto back arrow

      title: (title != null && subtitle != null)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 27.28 / 18,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle!,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 13.64,
                    height: 19.49 / 13.64,
                  ),
                ),
              ],
            )
          : null,

      centerTitle: true,

      actions: showRecording
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: const [
                    Icon(Iconsax.record, color: Colors.red, size: 20),
                    SizedBox(width: 4),
                    Text(
                      "REC",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 13.64,
                        height: 19.49 / 13.64,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(67);
}

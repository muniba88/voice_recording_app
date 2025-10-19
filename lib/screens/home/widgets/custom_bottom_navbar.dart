import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final List<Map<String, dynamic>> navItems = [
    {"icon": Iconsax.home, "label": "Home"},
    {"icon": Iconsax.briefcase, "label": "Project"},
    {"icon": Iconsax.message, "label": "Message"},
    {"icon": Iconsax.user, "label": "Profile"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 6,
            offset: Offset(0, -2),
          ),
        ],
        border: const Border(
          top: BorderSide(
            color: Color(0xFFE5E7EB),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(navItems.length, (index) {
          final isSelected = widget.currentIndex == index;
          return GestureDetector(
            onTap: () => widget.onTap(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  navItems[index]['icon'],
                  size: 24,
                  color: isSelected
                      ? const Color(0xFFC8A95F)
                      : const Color(0xFFA8A390),
                ),
                const SizedBox(height: 4),
                Text(
                  navItems[index]['label'],
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: isSelected
                        ? const Color(0xFFC8A95F)
                        : const Color(0xFFA8A390),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

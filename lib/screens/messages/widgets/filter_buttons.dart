import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(9999),
          border: Border(
            bottom: BorderSide(
              color: isSelected ? const Color(0xFFC8A95F) : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 20 / 14,
            color: isSelected
                ? const Color.fromARGB(
                    255, 8, 7, 6) // darker color for selected
                : const Color(0xFF2C2825), // default color
          ),
        ),
      ),
    );
  }
}

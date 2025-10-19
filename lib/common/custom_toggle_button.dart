import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  const CustomToggleButton({
    super.key,
    this.initialValue = false,
    this.onChanged,
  });

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  late bool isActive;

  @override
  void initState() {
    super.initState();
    isActive = widget.initialValue;
  }

  void toggle() {
    setState(() {
      isActive = !isActive;
    });
    widget.onChanged?.call(isActive);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        width: 45.8,
        height: 24,
        decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFFC8A95F) // active → golden
              : const Color(0xFFD1D5DB), // inactive → gray
          borderRadius: BorderRadius.circular(9999),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              alignment:
                  isActive ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

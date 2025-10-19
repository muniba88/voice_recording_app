import 'package:flutter/material.dart';
import 'number_bar.dart';

class BarContainer extends StatelessWidget {
  const BarContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          NumberBar(value: '24', label: 'Projects'),
          NumberBar(value: '18', label: 'Clients'),
          NumberBar(value: '4.9', label: 'Rating'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const InfoBox({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE1E1D5)),
      ),
      child: IntrinsicHeight(
        // ✅ makes both children (icon box + text) same height
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // ✅ stretch children vertically
          children: [
            // ✅ Left icon box — height auto matches description height
            Container(
              width: 36,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: const Color(0x1AD4AF37), // light gold with 10% opacity
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.only(top: 8), // ✅ small top padding
              child: Icon(
                icon,
                size: 20,
                color: const Color(0xFFC8A95F),
              ),
            ),

            const SizedBox(width: 12),

            // ✅ Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 24 / 16,
                      color: Color(0xFF2C2825),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 20 / 14,
                      color: Color(0xFFA8A390),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

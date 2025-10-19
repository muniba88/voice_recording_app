import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'info_box.dart';

class PersonalInformationContainer extends StatelessWidget {
  const PersonalInformationContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Section Heading
          const Text(
            'Professional Information',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              height: 28 / 18,
              color: Color(0xFF2C2825),
            ),
          ),

          const SizedBox(height: 16),

          // ✅ Information boxes
          const InfoBox(
            icon: Iconsax.briefcase,
            title: 'Experience',
            description: '8+ years in interior design',
          ),
          const SizedBox(height: 16),
          const InfoBox(
            icon: Iconsax.book,
            title: 'Education',
            description:
                'Bachelor of Fine Arts - Interior Design, New York School of Design',
          ),
          const SizedBox(height: 16),
          const InfoBox(
            icon: Iconsax.award,
            title: 'Certificates',
            description: 'NCIDQ Certified, LEED Green Associate',
          ),
        ],
      ),
    );
  }
}

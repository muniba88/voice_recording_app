import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../constants/image_strings.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // ✅ Responsive
      height: 292,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ✅ Profile Image with camera overlay
          Stack(
            alignment: Alignment.center,
            children: [
              // Main profile circle
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFC8A95F), width: 2),
                  image: DecorationImage(
                    image: AssetImage(AppImages.profile01), // ✅ your asset path
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Small camera circle bottom-right
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Color(0xFFC8A95F),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Iconsax.camera,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // ✅ Name heading
          const Text(
            'Sarah Johnson',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24,
              height: 36 / 24, // line height
              color: Color(0xFF2C2825),
            ),
          ),

          const SizedBox(height: 4),

          // ✅ Subheading
          const Text(
            'Interior Designer',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 24 / 16,
              color: Color(0xFF2C2825),
            ),
          ),

          const SizedBox(height: 12),

          // ✅ Tag Box ("Residential")
          Container(
            width: 110,
            height: 32,
            decoration: BoxDecoration(
              color: const Color(0xFFC8A95F),
              borderRadius: BorderRadius.circular(9999),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Residential',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 20 / 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

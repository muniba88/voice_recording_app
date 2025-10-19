import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recoring_app/constants/image_strings.dart';
import 'package:recoring_app/screens/setting/widgets/color_palet.dart';

/// 🔹 Icon type for branding item
enum BrandingIconType { image, palette, paper }

/// 🔹 A single row item for the Branding Options section
class BrandingItem extends StatelessWidget {
  final BrandingIconType iconType;
  final String title;
  final bool showOverlapColors;
  final bool hasBottomBorder;

  const BrandingItem({
    super.key,
    required this.iconType,
    required this.title,
    this.showOverlapColors = false,
    this.hasBottomBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconWidget;

    // 🖼️ Define which icon to use
    switch (iconType) {
      case BrandingIconType.image:
        iconWidget = Image.asset(
          AppImages.clientLogo, // 👈 replace with your asset
          width: 20,
          height: 20,
          fit: BoxFit.contain,
        );
        break;
      case BrandingIconType.palette:
        iconWidget = const Icon(Iconsax.color_swatch,
            size: 20, color: Color(0xFFC8A95F));
        break;
      case BrandingIconType.paper:
        iconWidget =
            const Icon(Iconsax.document, size: 20, color: Color(0xFFC8A95F));
        break;
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 17),
      decoration: BoxDecoration(
        color: Colors.white,
        border: hasBottomBorder
            ? const Border(
                bottom: BorderSide(color: Color(0xFFF3F4F6), width: 1),
              )
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 🟡 Left Icon Box
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0x1AD4AF37), // 10% opacity gold
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: iconWidget),
          ),
          const SizedBox(width: 12),

          // 🔸 Title
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF2C2825),
              ),
            ),
          ),

          // 🎨 Overlapping Color Circles (Only for "Brand Colors")
          if (showOverlapColors) ...[
            Stack(
              clipBehavior: Clip.none,
              children: const [
                ColorCircle(color: Color(0xFFC8A95F)),
                Positioned(
                    left: 10, child: ColorCircle(color: Color(0xFF2C2825))),
                Positioned(
                    left: 20,
                    child: ColorCircle(color: Colors.white, hasBorder: true)),
              ],
            ),
            const SizedBox(width: 38),
          ],

          // ➤ Right Arrow Icon
          const Icon(
            Iconsax.arrow_right_3,
            size: 20,
            color: Color(0xFF9CA3AF),
          ),
        ],
      ),
    );
  }
}

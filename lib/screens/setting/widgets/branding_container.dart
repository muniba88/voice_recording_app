import 'package:flutter/material.dart';
import 'branding_container_item.dart';

class BrandingOptionsContainer extends StatelessWidget {
  final double width;
  const BrandingOptionsContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔸 Heading
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              "Branding Options",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFFC8A95F),
              ),
            ),
          ),

          // 🔹 1️⃣ Client Logo
          BrandingItem(
            iconType: BrandingIconType.image,
            title: "Client Logo",
          ),
          BrandingItem(
            iconType: BrandingIconType.palette,
            title: "Brand Colors",
            showOverlapColors: true,
          ),
          BrandingItem(
            iconType: BrandingIconType.paper,
            title: "Export Branded Documents",
            hasBottomBorder: false,
          ),
        ],
      ),
    );
  }
}

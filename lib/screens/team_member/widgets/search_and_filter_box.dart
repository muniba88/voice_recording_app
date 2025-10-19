import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchAndFilterBox extends StatelessWidget {
  const SearchAndFilterBox({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
      child: Row(
        children: [
          // 🔍 Search Box
          Expanded(
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  const Icon(
                    Iconsax.search_normal,
                    size: 16.2,
                    color: Color(0xFF9CA3AF),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Search members...",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 20 / 14,
                      color: Color(0xFF9CA3AF),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 12),

          // ⬇️ "All Roles" Filter Box
          Container(
            width: 115,
            height: 42,
            padding: const EdgeInsets.fromLTRB(17, 11, 17, 11),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "All Roles",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 20 / 14,
                    color: Color(0xFF2C2825),
                  ),
                ),
                Icon(
                  Iconsax.arrow_down_1,
                  size: 9,
                  color: Color(0xFF9CA3AF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

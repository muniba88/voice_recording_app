import 'package:flutter/material.dart';

class TeamMemberBox extends StatelessWidget {
  final String imagePath;
  final String name;
  final String role;

  const TeamMemberBox({
    super.key,
    required this.imagePath,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // ✅ responsive
      height: 92,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center, // ✅ Vertically center all
        children: [
          // 🟣 Circle Avatar
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 12),

          // 🟣 Name + Role Tag
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
                  MainAxisAlignment.center, // ✅ vertically center text column
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 24 / 16,
                    color: Color(0xFF2C2825),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0x33D4AF37), // #D4AF3733
                    borderRadius: BorderRadius.circular(9999),
                  ),
                  child: Text(
                    role,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 16 / 12,
                      color: Color(0xFFC8A95F),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 🟣 Vertically centered More Icon
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.more_vert, // ✅ Vertical 3-dot icon
              size: 20,
              color: Color(0xFF9CA3AF),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SubscriptionContainer extends StatelessWidget {
  final double width;
  const SubscriptionContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔸 Heading
          const Text(
            "Subscription",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFFC8A95F),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),

          // 🧱 Inner White Box
          Container(
            width: width,
            height: 288,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Row 1: Plan + Status
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Professional Plan",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xFF2C2825),
                      ),
                    ),
                    const SizedBox(width: 8), // 👈 adds 8px gap
                    Container(
                      width: 53.5,
                      height: 28,
                      decoration: BoxDecoration(
                        color: const Color(0x33D4AF37), // 20% opacity
                        borderRadius: BorderRadius.circular(9999),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Active",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFFC8A95F),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // 🔹 Row 2: Renewal Info
                const Text(
                  "Renews on July 15, 2023",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF2C2825),
                  ),
                ),
                const SizedBox(height: 16),

                // 🔹 Payment Info Box
                Container(
                  width: width,
                  height: 64,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // 🟡 Icon Box
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0x1AD4AF37),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Iconsax.card,
                          size: 20,
                          color: Color(0xFFC8A95F),
                        ),
                      ),
                      const SizedBox(width: 12),

                      // 🔸 Card Info
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Visa ending in 4242",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF2C2825),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Expires 05/25",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFF2C2825),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // 🔸 Manage Subscription Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC8A95F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Manage Subscription",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // 🔹 Billing History Text
                const Center(
                  child: Text(
                    "Billing History",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF2C2825),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

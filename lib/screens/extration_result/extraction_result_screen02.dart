import 'package:flutter/material.dart';
import 'package:recoring_app/common/custom_appbar.dart';
import 'package:recoring_app/screens/kitchen_renovation/kitchen_renovation.dart';
import 'package:recoring_app/screens/recording/widgets/live_translation_box.dart';

class ExtractionResult02Screen extends StatelessWidget {
  const ExtractionResult02Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Extraction Results",
        subtitle: "Review detected items",
        showBackArrow: true,
      ),

      /// ✅ Bottom fixed button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          height: 46,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFC8A95F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KitchenRenovationScreen(),
                ),
              );
            },
            child: const Text(
              "Confirm All & Continue",
              style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 15.59,
                height: 23.39 / 15.59,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 📦 Live Translation Box
            LiveTranslationBox(),
            const SizedBox(height: 16),

            /// 📦 Task Box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFE1E1D5),
                  width: 1.3,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Row: Title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: const Color(0xFFFFEDD5),
                            child: const Icon(
                              Icons.task_alt,
                              color: Color(0xFFEA580C),
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Tasks",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                              fontSize: 15.59,
                              height: 23.39 / 15.59,
                              color: Color(0xFF111827),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3.76, horizontal: 7.78),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F4F6),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "2 items",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w400,
                            fontSize: 11.69,
                            height: 15.59 / 11.69,
                            color: Color(0xFF4B5563),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// List items
                  _buildDotItem("Order samples"),
                  const SizedBox(height: 7.78),
                  _buildDotItem("Measure walls"),
                  const SizedBox(height: 16),

                  /// Buttons row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Confirm Button
                      SizedBox(
                        width: 158.07,
                        height: 35.62,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFC8A95F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Confirm",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 13.64,
                              height: 19.49 / 13.64,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      /// Edit Button
                      SizedBox(
                        width: 159.76,
                        height: 35.62,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFFD1D5DB)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 13.64,
                              height: 19.49 / 13.64,
                              color: Color(0xFF374151),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Helper for dot item
  Widget _buildDotItem(String text) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 4,
          backgroundColor: Color(0xFF374151),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            fontSize: 13.64,
            height: 19.49 / 13.64,
            color: Color(0xFF374151),
          ),
        ),
      ],
    );
  }
}

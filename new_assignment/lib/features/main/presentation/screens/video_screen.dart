import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/core/widgets/big_blue_button.dart';
import 'package:new_assignment/features/main/presentation/screens/main_page.dart';
import 'package:new_assignment/gen/assets.gen.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              header('Hello Swati', 'Calley Personal'),
              const SizedBox(height: 16),

              // Stack to overlap video image on blue box
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E3365),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'If you are here for the first time then ensure that you have uploaded the list to call from calley Web Panel hosted on https://app.getcalley.com',
                      style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  // Overlapping image
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        Assets.icons.videoImg.path,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 80), // Space below the stack

              const Spacer(),

              // WhatsApp + Button row
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 45,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color(0xFF0EB01D),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Image.asset(
                      Assets.icons.whatsappIcon.path,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  Expanded(
                    child: bigBlueButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const MainPage(); // Replace with actual call screen
                            },
                          ),
                          (route) => false,
                        );
                      },
                      text: 'Start Calling Now',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Header widget
Widget header(String txt, String txt2) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    decoration: BoxDecoration(
      color: const Color(0xFF2563EB),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Image.asset(
          Assets.icons.personIcon.path,
          height: 54,
          width: 54,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              txt,
              style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              txt2,
              style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

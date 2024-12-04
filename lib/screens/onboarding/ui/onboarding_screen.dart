import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_hive/common_widgets/carousel_onboarding.dart';
import 'package:habit_hive/common_widgets/gradient_scaffold.dart';
import 'package:habit_hive/common_widgets/gradient_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Padding(
        padding: const EdgeInsets.only(top: 38, bottom: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/LOGO.png',
              height: 74,
              width: 188,
            ),
            const Gap(26),
            GradientText(
              style: GoogleFonts.elsie(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(255, 174, 0, 1),
                  Color.fromRGBO(255, 255, 255, 1)
                ],
              ),
              text: 'HABITHIVE',
            ),
            Text(
              'Hive your habits to thrive. ',
              style: GoogleFonts.inriaSerif(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            const Spacer(),
            const SizedBox(height: 115),
            const CarouselOnboarding(),
            const SizedBox(height: 20),
            const Spacer(),
            Text(
              "LET'S TRACK",
              style: GoogleFonts.inriaSans(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const Gap(26),
            Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFAE00),
                    Color(0xFFFFD069),
                  ],
                ),
              ),
              child: IconButton(
                onPressed: () {
                  context.go('/create-account');
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

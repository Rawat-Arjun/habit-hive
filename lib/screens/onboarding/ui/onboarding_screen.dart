import 'package:flutter/material.dart';
import 'package:habit_hive/screens/onboarding/ui/carousel_onboarding.dart';
import 'package:habit_hive/screens/user_auth_screen/ui/create_account_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Make your day',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const Text(
              'valuable and',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const Text(
              'Vibrant',
              style: TextStyle(
                color: Color.fromARGB(255, 208, 171, 58),
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 100,
              child: Image(
                image: NetworkImage(
                  'https://as2.f tcdn.net/v2/jpg/02/05/35/45/1000_F_205354526_8Y8E2VbxvFJccm8T91qLKofTEIDbxgdv.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const CarouselOnboarding(),
            const Text(
              "LET'S TRACK",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.amber, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CreateAccountScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.black87,
                iconSize: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

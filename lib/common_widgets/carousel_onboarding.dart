import 'package:flutter/material.dart';

class CarouselOnboarding extends StatefulWidget {
  const CarouselOnboarding({super.key});

  @override
  State<CarouselOnboarding> createState() => _CarouselOnboardingState();
}

class _CarouselOnboardingState extends State<CarouselOnboarding> {
  final _pageController = PageController(viewportFraction: 0.7);

  int currentIndex = 0;

  final List<String> carouselList = [
    'https://as2.ftcdn.net/v2/jpg/02/05/35/45/1000_F_205354526_8Y8E2VbxvFJccm8T91qLKofTEIDbxgdv.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/05/35/45/1000_F_205354526_8Y8E2VbxvFJccm8T91qLKofTEIDbxgdv.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/05/35/45/1000_F_205354526_8Y8E2VbxvFJccm8T91qLKofTEIDbxgdv.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/05/35/45/1000_F_205354526_8Y8E2VbxvFJccm8T91qLKofTEIDbxgdv.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/05/35/45/1000_F_205354526_8Y8E2VbxvFJccm8T91qLKofTEIDbxgdv.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: 250,
          child: PageView.builder(
            itemCount: carouselList.length,
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Image.network(
                  carouselList[index],
                  fit: BoxFit.contain,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(carouselList.length, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              height: 40.0,
              width: 10.0,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? Colors.amberAccent
                    : const Color.fromARGB(255, 124, 97, 16),
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }
}

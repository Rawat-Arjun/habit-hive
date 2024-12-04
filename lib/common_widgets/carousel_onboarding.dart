import 'package:flutter/material.dart';

class CarouselOnboarding extends StatefulWidget {
  const CarouselOnboarding({super.key});

  @override
  State<CarouselOnboarding> createState() => _CarouselOnboardingState();
}

class _CarouselOnboardingState extends State<CarouselOnboarding> {
  final PageController _pageController = PageController(viewportFraction: 0.2);
  int currentIndex = 0;

  final List<String> carouselList = [
    'assets/carousel_pic1.png',
    'assets/carousel_pic2.png',
    'assets/carousel_pic3.png',
    'assets/carousel_pic4.png',
    'assets/auth_pic.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 125,
          width: double.infinity,
          child: PageView.builder(
            itemCount: carouselList.length,
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              double scale = 1.0;

              if (_pageController.position.haveDimensions) {
                double value = _pageController.page! - index;
                scale = (1 - (value.abs() * 0.2)).clamp(0.8, 1.0);
              }

              return Transform.scale(
                scale: scale,
                child: Image.asset(
                  carouselList[index],
                  fit: BoxFit.cover,
                  height: 105,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 115),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(carouselList.length, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                  color: currentIndex == index
                      ? const Color.fromRGBO(255, 191, 53, 1)
                      : const Color.fromARGB(255, 124, 97, 16),
                  borderRadius: BorderRadius.circular(50)),
            );
          }),
        ),
      ],
    );
  }
}

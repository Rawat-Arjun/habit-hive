import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CarouselOnboarding extends StatefulWidget {
  const CarouselOnboarding({super.key});

  @override
  State<CarouselOnboarding> createState() => _CarouselOnboardingState();
}

class _CarouselOnboardingState extends State<CarouselOnboarding> {
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
        CarouselSlider(
            items: List.generate(
              carouselList.length,
              (index) {
                return Image.asset(
                  carouselList[index],
                  fit: BoxFit.cover,
                  height: 160,
                  width: 160,
                );
              },
            ),
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                viewportFraction: 0.3,
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeFactor: 0.3,
                aspectRatio: 1,
                enlargeCenterPage: true,
                height: 160)),
        const Gap(116),
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
                  borderRadius: BorderRadius.circular(4)),
            );
          }),
        ),
      ],
    );
  }
}

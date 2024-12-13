import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(
            controller: pageController, // PageController
            count: 5,
            effect: const WormEffect(
                dotWidth: 8,
                dotHeight: 8,
                activeDotColor: Colors.white,
                dotColor: Colors.white30), // your preferred effect
            onDotClicked: (index) {}),
      ),
    );
  }
}

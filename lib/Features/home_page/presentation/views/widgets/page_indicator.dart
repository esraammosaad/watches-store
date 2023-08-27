import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      effect: const WormEffect(
        dotColor: Color(0xffD9D9D9),
        activeDotColor: Color(0xffFFFDFD),
        spacing: 10,
        dotHeight: 10,
        dotWidth: 10,
      ),
      count: 3,
      onDotClicked: (index) => controller.jumpToPage(index),
    );
  }
}


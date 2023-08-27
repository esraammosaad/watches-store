import 'package:flutter/material.dart';
import 'image_controller.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: PageView(
        controller: controller,
        children: [
          ImageView(
            fontSize: 24,
            imageController: controller,
            image: 'assets/images/unsplash.png',
            text: 'Sale Upto',
          ),
          ImageView(
            imageController: controller,
            image: 'assets/images/unsplash.png',
          ),
          ImageView(
            imageController: controller,
            image: 'assets/images/unsplash.png',
          ),
        ],
      ),
    );
  }
}

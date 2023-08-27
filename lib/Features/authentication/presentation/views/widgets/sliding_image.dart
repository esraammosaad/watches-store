import 'package:flutter/material.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({Key? key, required this.slidingAnimation})
      : super(key: key);
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: Image.asset("assets/images/splash.png"),
    );
  }
}

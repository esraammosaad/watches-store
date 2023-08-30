import 'package:flutter/material.dart';
import '../styles.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.text, required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_back,
            size: 32,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              text,
              style: Styles.fontSize32.copyWith(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

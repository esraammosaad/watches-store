import 'package:flutter/material.dart';
import '../styles.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.text,
    required this.onPressed,
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
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text,
              style: Styles.fontSize24.copyWith(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

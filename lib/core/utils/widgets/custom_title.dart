import 'package:flutter/material.dart';
import '../styles.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
              style: Styles.fontSize24.copyWith(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

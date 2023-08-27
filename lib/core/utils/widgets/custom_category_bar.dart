import 'package:flutter/material.dart';
import '../styles.dart';

class CustomBrandsBar extends StatelessWidget {
  CustomBrandsBar(
      {super.key,
      required this.text,
      required this.categoryName,
      required this.onPressed});

  String categoryName;
  String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              categoryName,
              style: Styles.fontSize24.copyWith(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: Styles.fontSize20
                  .copyWith(color: const Color(0xB2000000).withOpacity(0.8)),
            ),
          ),
        ],
      ),
    );
  }
}

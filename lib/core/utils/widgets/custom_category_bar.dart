import 'package:flutter/material.dart';
import '../styles.dart';

class CustomBrandsBar extends StatelessWidget {
  const CustomBrandsBar(
      {super.key,
      required this.text,
      required this.categoryName,
      required this.onPressed});

  final String categoryName;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
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

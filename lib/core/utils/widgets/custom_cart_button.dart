import 'package:flutter/material.dart';
import '../styles.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff959595),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(text,
              style: Styles.fontSize14.copyWith(color: Colors.black),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

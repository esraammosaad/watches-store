import 'package:flutter/material.dart';
import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 300,
      color: const Color(0xff6B6B6B).withOpacity(0.1),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide:
              BorderSide(color: const Color(0xff6B6B6B).withOpacity(0.1))),
      onPressed: onTap,
      child: Center(
        child: Text(
          text,
          style: Styles.fontSize18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../styles.dart';

class CustomCartButton extends StatelessWidget {
   const CustomCartButton({super.key,
     required this.onTap,
    required this.text,
    required this.textColor,
    required this.containerColor
  });

  final void Function()? onTap;
  final String text;
 final Color textColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,

        decoration: BoxDecoration(
          color:  containerColor,
          borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xB2FFFFFF))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(text,
              style: Styles.fontSize18.copyWith(color: textColor),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

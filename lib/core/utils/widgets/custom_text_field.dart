import 'package:flutter/material.dart';
import '../styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onTap,
    this.onChanged,
  });

  final void Function()? onTap;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0x80000000),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0x80000000),
          ),
        ),
        prefixIcon: Image.asset('assets/icons/search.png',
            height: 10, fit: BoxFit.scaleDown),
        label: Text(
          'Search',
          style: Styles.fontSize20.copyWith(
            color: const Color(0x80000000),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0x80000000),
          ),
        ),
      ),
    );
  }
}

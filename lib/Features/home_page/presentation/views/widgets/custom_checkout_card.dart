import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';


class CustomCheckOutCard extends StatelessWidget {
  const CustomCheckOutCard({
    super.key, required this.title, required this.subTitle,
  });
  final String title;
  final Widget subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: const Color(0xFF929292),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: const BorderSide(
          color: Color(0xFF929292),
          width: 1,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          top: 10,
          left: 15,
          bottom: 15,
          right: 8
        ),
        title: Text(
          title,
          style: Styles.fontSize24.copyWith(
            color: const Color(0xB2000000),
          ),
        ),
        subtitle: subTitle,
      ),
    );
  }
}


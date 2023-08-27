import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class CustomCard extends StatelessWidget {
  CustomCard({Key? key,required this.image,required this.title}) : super(key: key);
  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 15,
      shadowColor: const Color(0xFF929292),
      color: const Color(0xFF929292),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: const BorderSide(color: Color(0xFF929292))),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          title,
          style: Styles.fontSize20.copyWith(color: const Color(0xB2000000)),
        ),

        leading: Image.asset(image),
      ),
    );
  }
}
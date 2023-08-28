import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class CustomContainer extends StatelessWidget {
  CustomContainer({Key? key, required this.image, required this.text}) : super(key: key);
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black)

      ),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(width: 40,),
          Text(text,style: Styles.fontSize16.copyWith(color: Colors.black),),

        ],
      ),
    );
  }
}

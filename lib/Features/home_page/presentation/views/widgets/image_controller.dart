
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class ImageView extends StatelessWidget {
  ImageView({Key? key,required this.image, this.text,this.fontSize,this.color,required this.imageContreller}) : super(key: key);
  String image;
  String ?text;
  PageController imageContreller = PageController();
  double? fontSize;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(image,height: 155,width: 390,fit: BoxFit.contain,),
        Padding(
          padding: const EdgeInsets.only(top: 25,left:20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text:  TextSpan(
                  text: ' Sale Upto ',
                  style: Styles.fontSize24,
                  children: [
                    TextSpan(
                      text: '70%',
                      style: Styles.fontSize24.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
             const SizedBox(height: 16,),
               Text('ELEATE YOUR STYLE\nAND STAY CONNECTED',
              style: Styles.fontSize20.copyWith(color: Colors.white.withOpacity(0.7)),),


            ],
          ),
        )
      ],
    );
  }
}
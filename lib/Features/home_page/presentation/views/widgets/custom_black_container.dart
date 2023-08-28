import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_cart_button.dart';
class CustomBlackContainer extends StatelessWidget {
   CustomBlackContainer({Key? key,required this.widget}) : super(key: key);
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 70,left: 20,right: 20,bottom: 30),
      height: 250,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
          )
      ),
      child:widget ,
    );
  }
}

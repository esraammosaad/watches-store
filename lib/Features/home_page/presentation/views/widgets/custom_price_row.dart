import 'package:flutter/material.dart';
class CustomPriceRow extends StatelessWidget {
  const CustomPriceRow({Key? key,required this.text, required this.price,required this.style}) : super(key: key);
  final String text;
  final String price;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: style,
          ),
          Text(
            price,
            style: style,
          ),
        ],
      ),
    );
  }
}
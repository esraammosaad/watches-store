import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class CustomPriceContainer extends StatelessWidget {
  const CustomPriceContainer({
    super.key, required this.price,
  });
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.only(left: 10, top: 8, right: 8),
      height: 44,
      width: 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black),
      ),
      child: Text(
       price.toString()+r'$',
        style: Styles.fontSize20.copyWith(color: Colors.black),
      ),
    );
  }
}
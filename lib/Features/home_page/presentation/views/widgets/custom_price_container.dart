import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';

class CustomPriceContainer extends StatelessWidget {
  const CustomPriceContainer({
    super.key,
    required this.items,
    required this.index,
  });

  final List<ProductsModel> items;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 3, top: 5, right: 3),
      height: 32,
      width: 70,
      decoration: const BoxDecoration(
        color: Color(0xFF444444),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      child: Text(
        '${items[index].price}' r'$',
        style: Styles.fontSize18.copyWith(color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}

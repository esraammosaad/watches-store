import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';
import 'custom_price_container.dart';

class WatchesItem extends StatelessWidget {
  WatchesItem({Key? key, required this.index, required this.items})
      : super(key: key);
  int index;
  List<ProductsModel> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomPriceContainer(items: items, index: index),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 5),
                  child: Image.asset('assets/icons/favorite.png', height: 24),
                )
              ],
            ),
            Image.asset(
              items[index].image,
              height: 80,
              width: 120,
            ),
            const Spacer(),
            Container(
              height: 30,
              decoration: const BoxDecoration(
                color: Color(0xFF444444),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Center(
                child: Text(
                  items[index].productName!,
                  style: Styles.fontSize18.copyWith(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      child: Card(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.transparent,
        elevation: 0,
        child: GridTile(
          header: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPriceContainer(items: items, index: index),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 5),
                child:
                    Image.asset('assets/icons/favorite.png', height: 27),
              )
            ],
          ),
          footer: Container(
            height: 43,
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
                style: Styles.fontSize20.copyWith(color: Colors.black),
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                items[index].image,
                height: 120,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

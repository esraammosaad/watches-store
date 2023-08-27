import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/watches_item.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';

class BrandItemsViewBody extends StatelessWidget {
  BrandItemsViewBody(
      {Key? key, required this.brandName, required this.brandItems})
      : super(key: key);
  List<ProductsModel> brandItems;
  String brandName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: buildBoxDecorationColor(),
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  brandName,
                  style: Styles.fontSize36.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: brandItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  itemBuilder: (context, index) =>
                      WatchesItem(index: index, items: brandItems)),
            )
          ],
        ),
      ),
    );
  }
}

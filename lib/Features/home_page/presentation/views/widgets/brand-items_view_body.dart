import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/watches_item.dart';
import 'package:watsh_store/core/utils/widgets/custom_title.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';
import '../item_details_view.dart';

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
        padding: const EdgeInsets.only(top: 16.0, left: 8, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 11.0),
              child: CustomTitle(text: brandName),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: brandItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 0),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailsView(
                          item: brandItems[index],
                        ),
                      ),
                    );
                  },
                  child: WatchesItem(index: index, items: brandItems),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

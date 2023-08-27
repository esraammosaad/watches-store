import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_cart_button.dart';
import '../../../../../core/utils/widgets/custom_rating_bar.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../../data/models/brands_model.dart';
import 'add_or_remove_item.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({
    super.key,
    required this.item,
  });

  final ProductsModel item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: buildBoxDecorationColor(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 8, right: 0),
              child: CustomTitle(text: item.productName!),
            ),
            AddOrRemoveItem(item: item),
            const SizedBox(
              height: 48,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32)),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 49, horizontal: 33),
                child: Column(
                  children: [
                    Text(item.description!),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomRatingBar(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              item.price!.toString(),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    CustomCartButton(
                      onTap: () {
                        buildShowModalBottomSheet(context);
                      },
                      text: "+ Add to Cart",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

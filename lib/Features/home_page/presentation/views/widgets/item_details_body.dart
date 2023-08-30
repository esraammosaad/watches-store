import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_cart_button.dart';
import '../../../../../core/utils/widgets/custom_rating_bar.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../../data/models/brands_model.dart';
import '../cart_view.dart';
import 'add_or_remove_item.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({
    super.key,
    required this.item,
  });

  final ProductsModel item;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: buildBoxDecorationColor(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8, right: 16),
                child: CustomTitle(
                  text: item.productName!,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AddOrRemoveItem(item: item),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.08,
                    horizontal: MediaQuery.of(context).size.width * 0.07,
                  ),
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
                              border: Border.all(color: Colors.white),
                            ),
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
                        containerColor: const Color(0xB2FFFFFF),
                        textColor: Colors.black,
                        onTap: () {
                          buildShowModalBottomSheet(
                            context: context,
                            text: "Added To cart",
                            buttonText: 'See Cart',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CartView(),
                                ),
                              );
                            },
                          );
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
      ),
    );
  }
}

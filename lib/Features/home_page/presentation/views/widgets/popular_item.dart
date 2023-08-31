import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/data/models/brands_model.dart';
import 'package:watsh_store/core/utils/widgets/custom_rating_bar.dart';
import '../../../../../core/utils/styles.dart';
import 'cusstom_container.dart';

class PopularItem extends StatelessWidget {
  const PopularItem(
      {Key? key, required this.item, required this.onTap, required this.index})
      : super(key: key);
  final List<ProductsModel> item;
  final VoidCallback onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 430,
          height: 173,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  item[index].image,
                  width: 170,
                  height: 186,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item[index].description!,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.fontSize14.copyWith(
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const CustomRatingBar(),
                      const SizedBox(
                        height: 17,
                      ),
                      CustomPriceContainer(price: item[index].price!),
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

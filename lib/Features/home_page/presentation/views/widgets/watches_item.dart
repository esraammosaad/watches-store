import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';
import '../../manager/favorite_cubit/favorite_cubit.dart';
import 'custom_price_container.dart';

class WatchesItem extends StatelessWidget {
  const WatchesItem({Key? key, required this.index, required this.items})
      : super(key: key);
  final int index;
  final List<ProductsModel> items;

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
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<FavoriteCubit>(context)
                        .getFavoriteItems(item: items[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, right: 5),
                    child: items[index].isFavorite
                        ? const Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                            size: 30,
                          )
                        : const Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.black,
                            size: 30,
                          ),
                  ),
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

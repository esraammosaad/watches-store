import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/favorite_cubit/favorite_cubit.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';
import 'custom_price_container.dart';

class CustomWatchCard extends StatelessWidget {
  CustomWatchCard({Key? key, required this.index, required this.items, required this.onTap})
      : super(key: key);
  final int index;
  final List<ProductsModel> items;
 final VoidCallback onTap;

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
                child: GestureDetector(
                    onTap: onTap,
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
                          )),
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
                height: 100,
                width: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';

class CustomBrandItem extends StatelessWidget {
  CustomBrandItem(
      {Key? key,
      required this.index,
      required this.brands,
      required this.onTap})
      : super(key: key);
  int index;
  List<ProductsModel> brands;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 125,
          width: 123,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xB2000000),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Image.asset(
                  brands[index].image,
                  width: 130,
                  height: 105,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(5),
                height: 32,
                width: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: const BoxDecoration(
                  color: Color(0xFF939393),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Text(
                  brands[index].productBrand,
                  style: Styles.fontSize16.copyWith(
                      color: const Color(0xB2000000),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

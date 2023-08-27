import 'package:flutter/material.dart';
import '../../../data/models/brands_model.dart';
import '../brand_items_view.dart';
import '../../../../../core/utils/widgets/brand_item.dart';

class CustomBrandsListView extends StatelessWidget {
  const CustomBrandsListView(
      {super.key, required this.brands, required this.productItems});

  final List<ProductsModel> brands;
  final List<ProductsModel> productItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView.builder(
          itemCount: brands.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => BrandsItem(
            index: index,
            brands: brands,
            onTap: () {
              List<ProductsModel> brandItems = [];
              for (int i = 0; i < productItems.length; i++) {
                if (brands[index].productBrand ==
                    productItems[i].productBrand) {
                  brandItems.add(
                    productItems[i],
                  );
                }
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BrandItemsView(
                    brandItem: brandItems,
                    brandName: brands[index].productBrand,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../../data/models/brands_model.dart';
import '../brand_items_view.dart';
import 'custom_brand_item.dart';

class AllBrandsViewBody extends StatelessWidget {
  const AllBrandsViewBody(
      {Key? key, required this.brands, required this.productItems})
      : super(key: key);
  final List<ProductsModel> brands;
  final List<ProductsModel> productItems;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: buildBoxDecorationColor(),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 16),
                child: CustomTitle(
                  text: "Brands",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: brands.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) => CustomBrandItem(
                    index: index,
                    brands: brands,
                    onTap: () {
                      List<ProductsModel> brandItems = [];
                      for (int i = 0; i < productItems.length; i++) {
                        if (brands[index].productBrand ==
                            productItems[i].productBrand) {
                          brandItems.add(productItems[i]);
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

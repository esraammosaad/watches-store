import 'package:flutter/material.dart';


import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/brand_item.dart';
import '../../../data/models/brands_model.dart';
import '../brand_items_view.dart';

class AllBrandsViewBody extends StatelessWidget {
  AllBrandsViewBody(
      {Key? key, required this.brands, required this.productItems})
      : super(key: key);
  List<ProductsModel> brands;
  List<ProductsModel> productItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: buildBoxDecorationColor(),
      child: Padding(
        padding: const EdgeInsets.only(top: 35.0, left: 10,right: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back,size: 32,color: Colors.black,)),
                const SizedBox(width: 30,),
                Text(
                  'Brands',
                  style: Styles.fontSize36.copyWith(color: Colors.black),
                ),
              ],
            ),

            Expanded(
              child: GridView.builder(
                  itemCount: brands.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => BrandsItem(
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
                                      )));
                        },
                      )),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../../data/models/brands_model.dart';
import '../../manager/home_cubit/home_cubit.dart';
import '../brand_items_view.dart';
import 'custom_brand_item.dart';

class AllBrandsViewBody extends StatelessWidget {
  const AllBrandsViewBody(
      {Key? key, })
      : super(key: key);


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
                  itemCount: BlocProvider.of<HomeCubit>(context).brands.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) => CustomBrandItem(
                    index: index,
                    onTap: () {
                      showBrandItems(context, index);
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

  void showBrandItems(BuildContext context, int index) {
    List<ProductsModel> brandItems = [];
    for (int i = 0; i < BlocProvider.of<HomeCubit>(context).productItems.length; i++) {
      if (BlocProvider.of<HomeCubit>(context).brands[index].productBrand ==
          BlocProvider.of<HomeCubit>(context).productItems[i].productBrand) {
        brandItems.add(BlocProvider.of<HomeCubit>(context).productItems[i]);
      }
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BrandItemsView(
          brandItem: brandItems,
          brandName: BlocProvider.of<HomeCubit>(context).brands[index].productBrand,
        ),
      ),
    );
  }
}

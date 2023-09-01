import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/watches_item.dart';
import 'package:watsh_store/core/utils/widgets/custom_title.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';
import '../../manager/favorite_cubit/favorite_cubit.dart';
import '../item_details_view.dart';

class BrandItemsViewBody extends StatelessWidget {
  const BrandItemsViewBody(
      {Key? key, required this.brandName, required this.brandItems})
      : super(key: key);
  final List<ProductsModel> brandItems;
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: buildBoxDecorationColor(),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 11.0, bottom: 16),
                child: CustomTitle(
                  text: brandName,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: BlocBuilder<FavoriteCubit, FavoriteState>(
                  builder: (context, state) {
                    return GridView.builder(
                      itemCount: brandItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailsView(
                                item: brandItems[index],
                              ),
                            ),
                          );
                        },
                        child: WatchesItem(
                          index: index,
                          items: brandItems,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

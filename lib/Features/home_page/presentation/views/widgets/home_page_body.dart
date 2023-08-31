import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/favorite_cubit/favorite_cubit.dart';
import 'package:watsh_store/Features/home_page/presentation/views/item_details_view.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/custom_watch_card.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';
import '../all_brands_view.dart';
import '../../../../../core/utils/widgets/custom_category_bar.dart';
import '../popular_watches_view.dart';
import 'custom_brands_list_view.dart';
import 'custom_flexiable_bar.dart';

class HomePageViewBody extends StatelessWidget {
  HomePageViewBody({super.key});


  PageController controller = PageController();
  List<ProductsModel> brands = [
    ProductsModel(
      image: 'assets/images/omega.png',
      productBrand: 'Omega',
      id: 0,
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/tag.png',
      productBrand: 'TAG',
      id: 1,
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/jaeger.png',
      productBrand: 'Jaeger',
      id: 2,
      isFavorite: false,
    ),
  ];

  String? brandName;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 370,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleBar(controller: controller),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomBrandsBar(
                  text: 'See All',
                  categoryName: 'Brands',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllBrandsView(
                          brands: brands,
                          productItems: BlocProvider.of<FavoriteCubit>(context).productItems,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomBrandsListView(
                    brands: brands, productItems: BlocProvider.of<FavoriteCubit>(context).productItems),
                const SizedBox(
                  height: 10,
                ),
                CustomBrandsBar(
                  text: 'See All',
                  categoryName: 'Popular',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PopularWatchesView(items: BlocProvider.of<FavoriteCubit>(context).productItems),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemDetailsView(
                        item: BlocProvider.of<FavoriteCubit>(context).productItems[index],
                      ),
                    ),
                  );
                },
                child: BlocBuilder<FavoriteCubit, FavoriteState>(

                  builder: (context, state) {
                    return CustomWatchCard(
                      onTap: () {
                        BlocProvider.of<FavoriteCubit>(context)
                            .getFavoriteItems(item: BlocProvider.of<FavoriteCubit>(context).productItems[index]);



                      },
                      index: index,
                      items: BlocProvider.of<FavoriteCubit>(context).productItems,
                    );
                  },
                ),
              ),
              childCount: BlocProvider.of<FavoriteCubit>(context).productItems.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
            ),
          )
        ],
      ),
    );
  }
}

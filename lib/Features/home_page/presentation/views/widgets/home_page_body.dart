import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/home_page/presentation/views/item_details_view.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/custom_watch_card.dart';
import '../../../../../core/utils/styles.dart';
import '../../manager/favorite_cubit/favorite_cubit.dart';
import '../../manager/home_cubit/home_cubit.dart';
import '../all_brands_view.dart';
import '../../../../../core/utils/widgets/custom_category_bar.dart';
import '../popular_watches_view.dart';
import 'custom_brands_list_view.dart';
import 'custom_flexiable_bar.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});




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
            flexibleSpace: FlexibleBar(controller: BlocProvider.of<HomeCubit>(context).controller),
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

                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomBrandsListView(
                    brands: BlocProvider.of<HomeCubit>(context).brands,
                    productItems:
                        BlocProvider.of<HomeCubit>(context).productItems),
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
                        builder: (context) => PopularWatchesView(
                            items: BlocProvider.of<HomeCubit>(context)
                                .productItems),
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
                        item: BlocProvider.of<HomeCubit>(context)
                            .productItems[index],
                      ),
                    ),
                  );
                },
                child: BlocBuilder<FavoriteCubit, FavoriteState>(
                  builder: (context, state) {
                    return CustomWatchCard(
                      onTap: () {
                        BlocProvider.of<FavoriteCubit>(context)
                            .getFavoriteItems(
                                item: BlocProvider.of<HomeCubit>(context)
                                    .productItems[index]);
                      },
                      index: index,
                      items:
                          BlocProvider.of<HomeCubit>(context).productItems,
                    );
                  },
                ),
              ),
              childCount:
                  BlocProvider.of<HomeCubit>(context).productItems.length,
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

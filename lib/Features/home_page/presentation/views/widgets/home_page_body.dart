import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/watches_item.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';
import '../all_brands_view.dart';
import '../../../../../core/utils/widgets/custom_category_bar.dart';
import '../popular_watches_view.dart';
import 'custom_brands_list_view.dart';
import 'custom_flexiable_bar.dart';

class HomePageViewBody extends StatefulWidget {
  const HomePageViewBody({Key? key}) : super(key: key);

  @override
  State<HomePageViewBody> createState() => _HomePageViewBodyState();
}

class _HomePageViewBodyState extends State<HomePageViewBody> {
  PageController controller = PageController();
  List<ProductsModel> brands = [
    ProductsModel(
        image: 'assets/images/omega.png', productBrand: 'Omega', id: 0),
    ProductsModel(image: 'assets/images/tag.png', productBrand: 'TAG', id: 1),
    ProductsModel(
        image: 'assets/images/jaeger.png', productBrand: 'Jaeger', id: 2),
  ];
  List<ProductsModel> productItems = [
    ProductsModel(
        image: 'assets/images/omega.png',
        productName: 'Omega',
        price: 500,
        id: 0,
        productBrand: 'Omega'),
    ProductsModel(
        image: 'assets/images/piaget.png',
        productName: 'Piaget',
        price: 500,
        id: 1,
        productBrand: 'Jaeger'),
    ProductsModel(
        image: 'assets/images/meister.png',
        productName: 'meister',
        price: 500,
        id: 2,
        productBrand: 'Omega'),
    ProductsModel(
        image: 'assets/images/piaget.png',
        productName: 'Piaget',
        price: 500,
        id: 3,
        productBrand: 'TAG'),
  ];
  String? brandName;

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
                                  productItems: productItems,
                                )));
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomBrandsListView(
                    brands: brands, productItems: productItems),
                const SizedBox(
                  height: 10,
                ),
                CustomBrandsBar(
                  text: 'See All',
                  categoryName: 'Popular',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PopularWatchesView()));
                  },
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => WatchesItem(
                index: index,
                items: productItems,
              ),
              childCount: productItems.length,
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

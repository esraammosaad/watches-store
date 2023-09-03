import 'package:flutter/material.dart';
import 'package:watsh_store/core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../../data/models/brands_model.dart';
import '../item_details_view.dart';
import 'custom_search_bar.dart';
import 'custom_search_item.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  List<ProductsModel> items = [
    ProductsModel(
      image: 'assets/images/omega.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'Omega',
      price: 500,
      id: 0,
      productBrand: 'Omega',
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/piaget.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'Piaget',
      price: 500,
      id: 1,
      productBrand: 'Jaeger',
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/meister.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'meister',
      price: 500,
      id: 2,
      productBrand: 'Omega',
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/piaget.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'Piaget',
      price: 500,
      id: 3,
      productBrand: 'TAG',
      isFavorite: false,
    ),
  ];
  List<ProductsModel> searchItems = [];

  @override
  void initState() {
    searchItems = items;
    super.initState();
  }

  void updateItems(value) {
    List<ProductsModel> results = [];
    if (value.isEmpty) {
      results = items;
    } else {
      results = items
          .where((element) =>
              element.productName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    setState(() {
      searchItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: buildBoxDecorationColor(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, right: 16, left: 16, bottom: 16),
              child: CustomTitle(
                text: 'Search',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 8, left: 8),
              child: CustomSearchBar(
                onChanged: (value) => updateItems(value),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffD3D3D3),
                      Color(0xffBCBCBC),
                      Color(0xff8C8C8C),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 27,
                          top: 24,
                        ),
                        child: Text(
                          "last search",
                          style: Styles.fontSize24.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemDetailsView(
                                  item: searchItems[index],
                                ),
                              ),
                            );
                          },
                          child: CustomSearchItem(
                            text: searchItems[index].productName!,
                            onPressed: () {
                              setState(() {
                                searchItems.remove(searchItems[index]);
                              });
                            },
                          ),
                        ),
                        itemCount: searchItems.length,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

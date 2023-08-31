import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/data/models/brands_model.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/popular_watches_view_body.dart';

class PopularWatchesView extends StatelessWidget {
  const PopularWatchesView({Key? key, required this.items}) : super(key: key);
 final List<ProductsModel>items;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PopularWatchesViewBody(items: items),
    );
  }
}

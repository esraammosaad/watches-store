import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/item_details_body.dart';
import '../../data/models/brands_model.dart';

class ItemDetailsView extends StatelessWidget {
  ItemDetailsView({Key? key, required this.item}) : super(key: key);
  ProductsModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemDetailsBody(item: item),
    );
  }
}

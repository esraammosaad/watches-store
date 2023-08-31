import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/cart_body.dart';

import '../../data/models/brands_model.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key, required this.items}) : super(key: key);
  final List<ProductsModel> items;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CartBody(items : items),
    );
  }
}

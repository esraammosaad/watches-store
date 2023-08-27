import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/cart_body.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartBody(),
    );
  }
}

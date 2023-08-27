import 'package:flutter/material.dart';
import 'package:watsh_store/core/utils/styles.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecorationColor(),
      ),
    );
  }
}

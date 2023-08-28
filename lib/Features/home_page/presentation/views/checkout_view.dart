import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/checkout_view_body.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/custom_container.dart';
import 'package:watsh_store/core/utils/styles.dart';
import 'package:watsh_store/core/utils/widgets/custom_cart_button.dart';
import 'package:watsh_store/core/utils/widgets/custom_title.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckoutViewBody(),
    );
  }
}



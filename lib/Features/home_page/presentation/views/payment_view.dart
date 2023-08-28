import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/payment_view_body.dart';
class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentViewBody(),
    );
  }
}

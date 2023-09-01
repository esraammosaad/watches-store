import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_cart_button.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../manager/cart_cubit/cart_cubit.dart';
import '../checkout_view.dart';
import 'custom_cart_body.dart';
import 'custom_price_row.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {},
      builder: (context, state) => Container(
        decoration: buildBoxDecorationColor(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 8,
                right: 16,
              ),
              child: CustomTitle(
                text: "My Cart",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => CustomCartBody(index: index),
                itemCount: BlocProvider.of<CartCubit>(context).cartItems.length,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                ),
                color: Colors.black,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: [
                          CustomPriceRow(
                              text: "Item total",
                              price: BlocProvider.of<CartCubit>(context)
                                      .totalPrice
                                      .toString() +
                                  r'$',
                              style: Styles.fontSize20.copyWith(
                                color: Colors.white.withOpacity(0.7),
                              )),
                          CustomPriceRow(
                              text: "Delivery Charge",
                              price: "50\$",
                              style: Styles.fontSize20.copyWith(
                                color: Colors.white.withOpacity(0.7),
                              )),
                          CustomPriceRow(
                              text: "Tax",
                              price: "40\$",
                              style: Styles.fontSize20.copyWith(
                                color: Colors.white.withOpacity(0.7),
                              )),
                        ],
                      ),
                    ),
                    CustomPriceRow(
                        text: "total",
                        price:
                            '${BlocProvider.of<CartCubit>(context).totalPrice + 40 + 50}',
                        style: Styles.fontSize24.copyWith(
                          color: Colors.white.withOpacity(0.7),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomCartButton(
                      containerColor: const Color(0xB2FFFFFF),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CheckoutView(),
                          ),
                        );
                      },
                      text: "Checkout",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

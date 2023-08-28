import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/home_page_view.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/custom_card.dart';
import 'package:watsh_store/core/utils/widgets/custom_title.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_cart_button.dart';
import 'custom_black_container.dart';
import 'custom_payment_field.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 30.0, right: 16, left: 16, bottom: 16),
              child: CustomTitle(text: 'Payment'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomCard(
                      image: 'assets/icons/image.png',
                      title: 'Credit card Payment',
                      style: Styles.fontSize18.copyWith(
                          color: const Color(0xB2000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Enter Your Card Detailes to Pay',
                      style: Styles.fontSize18.copyWith(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomPaymentField(
                      label: 'Card Number',
                      hint: '0000 0000 0000 0000',
                      textInputAction: TextInputAction.next),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomPaymentField(
                            label: 'Card Expire',
                            hint: 'MM / YY',
                            textInputAction: TextInputAction.next),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomPaymentField(
                            label: 'CVV',
                            hint: '123',
                            textInputAction: TextInputAction.done),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomBlackContainer(
              widget: Column(
                children: [
                  CustomCartButton(
                    containerColor: const Color(0xB2FFFFFF),
                    textColor: Colors.black,
                    onTap: () {
                      buildShowModalBottomSheet(
                        context: context,
                        buttonText: 'Continue shopping',
                        text: 'Thank you for your order',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePageView(),
                            ),
                          );
                        },
                      );
                    },
                    text: 'Confirm Payment',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomCartButton(
                    onTap: () {},
                    text: 'Cancel Payment',
                    textColor: const Color(0xB2FFFFFF),
                    containerColor: Colors.transparent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

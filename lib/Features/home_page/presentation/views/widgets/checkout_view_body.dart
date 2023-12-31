import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/payment_view.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_cart_button.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import 'custom_black_container.dart';
import 'custom_checkout_card.dart';
import 'custom_container.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: buildBoxDecorationColor(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 8,
                  right: 16,
                ),
                child: CustomTitle(
                  text: "Checkout",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                ),
                child: Column(
                  children: [
                    CustomCheckOutCard(title:'Delivery Address,',subTitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 27.0,
                    bottom: 30,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      '003 Junction Johnson45Apt',
                      style: Styles.fontSize16.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ) ),


                    const SizedBox(
                      height: 20,
                    ),
                     CustomCheckOutCard(title: 'Payment Method,',subTitle:Padding(
                       padding: const EdgeInsets.only(top: 20.0, right: 10),
                       child: Column(
                         children: [
                           Container(
                             padding: const EdgeInsets.all(8),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(16),
                               border: Border.all(color: Colors.black),
                             ),
                             child: Row(
                               children: [
                                 Image.asset('assets/icons/image.png'),
                                 const SizedBox(
                                   width: 10,
                                 ),
                                 Text(
                                   'Credit card',
                                   style: Styles.fontSize16.copyWith(
                                     color: Colors.black,
                                   ),
                                 ),
                                 const Spacer(),
                                 Image.asset('assets/icons/mdi_success.png'),
                               ],
                             ),
                           ),
                           const SizedBox(
                             height: 10,
                           ),
                           CustomContainer(
                             text: 'QR Code',
                             image: 'assets/icons/bi_qr-code-scan.png',
                           ),
                           const SizedBox(
                             height: 10,
                           ),
                           CustomContainer(
                             image: 'assets/icons/image2.png',
                             text: 'PayPal',
                           ),
                         ],
                       ),
                     ) ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomBlackContainer(
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCartButton(
                      containerColor: const Color(0xB2FFFFFF),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentView(),
                          ),
                        );
                      },
                      text: 'Payment',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


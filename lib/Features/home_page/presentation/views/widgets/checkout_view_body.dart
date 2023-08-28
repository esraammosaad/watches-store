import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/payment_view.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_cart_button.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import 'custom_black_container.dart';
import 'custom_container.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30.0, right: 16, left: 16),
              child: CustomTitle(text: 'CheckOut'),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Card(
                    elevation: 15,
                    color: const Color(0xFF929292),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide:
                          const BorderSide(color: Color(0xFF929292), width: 1),
                    ),
                    child: ListTile(
                      contentPadding:
                          const EdgeInsets.only(top: 25, right: 20, left: 20),
                      title: Text(
                        'Delivery Address,',
                        style: Styles.fontSize24.copyWith(
                          color: const Color(0xB2000000),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 27.0, bottom: 30),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Text(
                            '003 Junction Johnson45Apt',
                            style:
                                Styles.fontSize16.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Card(
                    elevation: 15,
                    color: const Color(0xFF929292),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide:
                          const BorderSide(color: Color(0xFF929292), width: 1),
                    ),
                    child: ListTile(
                      contentPadding:
                          const EdgeInsets.only(top: 25, left: 16, bottom: 30),
                      title: Text(
                        'Payment Method,',
                        style: Styles.fontSize24.copyWith(
                          color: const Color(0xB2000000),
                        ),
                      ),
                      subtitle: Padding(
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
                                    style: Styles.fontSize16
                                        .copyWith(color: Colors.black),
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
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
    );
  }
}

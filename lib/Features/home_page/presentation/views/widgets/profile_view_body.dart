import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_card.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 16, bottom: 16),
              child: Text(
                'Profile',
                style: Styles.fontSize36.copyWith(color: Colors.black),
              ),
            ),
            Card(
              elevation: 15,
              shadowColor: const Color(0xFF929292),
              color: const Color(0xFF929292),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: Color(0xFF929292))),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                title: Text(
                  'Rebprt Nicklas',
                  style: Styles.fontSize24.copyWith(color: Colors.black),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Rebprt22@gamil.com',
                          style: Styles.fontSize18
                              .copyWith(color: const Color(0x80000000)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 100,
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xB2F51010),
                          ),
                          child: Center(
                              child: Text(
                            "Edit",
                            style:
                                Styles.fontSize20.copyWith(color: Colors.black),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                leading: Image.asset('assets/icons/photo.png'),
              ),
            ),
            const SizedBox(
              height: 61,
            ),
            CustomCard(
                image: 'assets/icons/payment.png', title: 'Payment Method',style: Styles.fontSize20.copyWith(
              color: const Color(0xB2000000),
            )),
            CustomCard(image: 'assets/icons/feedback.png', title: 'Feedback',style: Styles.fontSize20.copyWith(
              color: const Color(0xB2000000),
            )),
            CustomCard(image: 'assets/icons/help.png', title: 'Help',style: Styles.fontSize20.copyWith(
              color: const Color(0xB2000000),
            )),
            CustomCard(image: 'assets/icons/info.png', title: 'privacy Policy',style: Styles.fontSize20.copyWith(
              color: const Color(0xB2000000),
            )),
            CustomCard(image: 'assets/icons/logout.png', title: 'Log Out',style: Styles.fontSize20.copyWith(
              color: const Color(0xB2000000),
            )),
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/authentication/presentation/views/sign_in_view.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../manager/cart_cubit/cart_cubit.dart';
import '../home_page_view.dart';
import 'custom_card.dart';

class ProfileViewBody extends StatelessWidget {
  ProfileViewBody({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: buildBoxDecorationColor(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 8,
                  right: 16,
                ),
                child: CustomTitle(
                  text: "Profile",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePageView(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                elevation: 15,
                shadowColor: const Color(0xFF929292),
                color: const Color(0xFF929292),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(
                    color: Color(0xFF929292),
                  ),
                ),
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  title: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'Rebprt Nicklas',
                    style: Styles.fontSize24.copyWith(color: Colors.black),
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        '${user!.email}',
                        style: Styles.fontSize18
                            .copyWith(color: const Color(0x80000000)),
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
                                style: Styles.fontSize20
                                    .copyWith(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  leading: Image.asset(
                    'assets/icons/photo.png',
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                ),
              ),
              const SizedBox(
                height: 61,
              ),
              CustomCard(
                image: 'assets/icons/payment.png',
                title: 'Payment Method',
                style: Styles.fontSize20.copyWith(
                  color: const Color(0xB2000000),
                ),
                onTap: () {},
              ),
              CustomCard(
                image: 'assets/icons/feedback.png',
                title: 'Feedback',
                style: Styles.fontSize20.copyWith(
                  color: const Color(0xB2000000),
                ),
                onTap: () {},
              ),
              CustomCard(
                image: 'assets/icons/help.png',
                title: 'Help',
                style: Styles.fontSize20.copyWith(
                  color: const Color(0xB2000000),
                ),
                onTap: () {},
              ),
              CustomCard(
                image: 'assets/icons/info.png',
                title: 'privacy Policy',
                style: Styles.fontSize20.copyWith(
                  color: const Color(0xB2000000),
                ),
                onTap: () {},
              ),
              CustomCard(
                image: 'assets/icons/logout.png',
                title: 'Log Out',
                style: Styles.fontSize20.copyWith(
                  color: const Color(0xB2000000),
                ),
                onTap: () async {
                  BlocProvider.of<CartCubit>(context).reset();
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInView(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/home_page/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:watsh_store/Features/home_page/presentation/views/cart_view.dart';
import 'package:watsh_store/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/menu.png', height: 32),
        const Spacer(
          flex: 1,
        ),
        BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  top: -5,
                  right: -5,
                  child: CircleAvatar(
                    backgroundColor: Colors.red[700],
                    radius: 10,
                    child: Text(
                        "${BlocProvider.of<CartCubit>(context).cartItems.length}",
                        style: Styles.fontSize14),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartView()));
                    },
                    child: Image.asset('assets/icons/cart.png', height: 30)),
              ],
            );
          },
        ),
      ],
    );
  }
}

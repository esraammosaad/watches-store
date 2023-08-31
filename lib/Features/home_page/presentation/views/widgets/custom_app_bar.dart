import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/cart_view.dart';

import '../../../../../constents.dart';

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
        Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red[700],
              radius: 3,
            ),
            GestureDetector(onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> CartView(items:cartItems,)));
            },
                child: Image.asset('assets/icons/cart.png', height: 30)),
          ],
        ),
      ],
    );
  }
}

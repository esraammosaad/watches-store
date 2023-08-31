import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/cart_view.dart';
import 'package:watsh_store/core/utils/widgets/custom_cart_button.dart';

abstract class Styles {
  static TextStyle fontSize10 = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static TextStyle fontSize14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle fontSize16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle fontSize18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle fontSize20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle fontSize24 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle fontSize32 = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static TextStyle fontSize36 = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
  );
}

BoxDecoration buildBoxDecorationColor() {
  return BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          const Color(0xff464646),
          Colors.black.withOpacity(0.7)
        ],
        stops: const [
          0,
          .7,
          1
        ]),
  );
}

Future<void> buildShowModalBottomSheet(
    {required BuildContext context, required String text, required String buttonText, required VoidCallback onTap}) {
  return showModalBottomSheet<void>(
    shape: const OutlineInputBorder(borderRadius:BorderRadius.only(
      topRight: Radius.circular(32),
      topLeft: Radius.circular(32),

    ) ),
    context: context,

    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          

            decoration: const BoxDecoration(
              color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),

                ),

            ),

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 59, horizontal: 33),
            child: Column(
              children: [
                Image.asset("assets/icons/mdi_success2.png"),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  text,
                  style: Styles.fontSize24,textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomCartButton(
                  containerColor: const Color(0xB2FFFFFF),
                  textColor: Colors.black,
                  onTap: onTap,
                  text: buttonText,
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

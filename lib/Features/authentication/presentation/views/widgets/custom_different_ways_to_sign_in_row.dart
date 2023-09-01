import 'package:flutter/material.dart';
class CustomDifferentWaysToSignInRow extends StatelessWidget {
  const CustomDifferentWaysToSignInRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.075,
          vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/google.png"),
          Image.asset("assets/images/facebook.png"),
          Image.asset("assets/images/gmail.png"),
        ],
      ),
    );
  }
}
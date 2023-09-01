import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class CustomHaveAnAccountRow extends StatelessWidget {
  const CustomHaveAnAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already Have Account ? ",
          style: Styles.fontSize18,
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Text(
            "Sign In",
            style: Styles.fontSize18,
          ),
        ),
      ],
    );
  }
}
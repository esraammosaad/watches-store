import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../sign_up_view.dart';
class CustomNewUserRow extends StatelessWidget {
  const CustomNewUserRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.075),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "New User ? ",
            style: Styles.fontSize18,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpView(),
                )),
            child: Text(
              "Sign Up",
              style: Styles.fontSize18,
            ),
          ),
        ],
      ),
    );
  }
}
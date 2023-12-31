import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(text,
              style: Styles.fontSize24.copyWith(color: Colors.black)),
          trailing: IconButton(
            onPressed: onPressed,
            icon: Image.asset("assets/icons/delete.png"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

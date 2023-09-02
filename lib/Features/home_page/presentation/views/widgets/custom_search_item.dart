import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(text,
              style: Styles.fontSize24.copyWith(color: Colors.black)),
          trailing: IconButton(
            onPressed: () {},
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

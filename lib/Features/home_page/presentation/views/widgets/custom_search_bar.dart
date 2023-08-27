import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_text_field.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox(
            height: 45,
            child: CustomTextField(),
          ),
        ),
        const SizedBox(width: 10,),
        Image.asset('assets/icons/setting.png',height: 36,)
      ],
    );
  }
}
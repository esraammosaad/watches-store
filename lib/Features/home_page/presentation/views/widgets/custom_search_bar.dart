import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: CustomTextField(),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.onTap,
    this.enabled,
    this.onChanged,
  });

  final void Function()? onTap;
  final bool? enabled;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: CustomTextField(
              onChanged: onChanged,
              onTap: onTap,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

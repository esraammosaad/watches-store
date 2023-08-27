import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';

class AddOrRemoveItem extends StatelessWidget {
  const AddOrRemoveItem({
    super.key,
    required this.item,
  });

  final ProductsModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Image.asset(item.image),
        ),
        Positioned(
          bottom: -18,
          right: 25,
          child: Container(
            height: 36,
            width: 148,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black.withOpacity(0.7),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "-",
                  style: Styles.fontSize24.copyWith(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                Text(
                  "1",
                  style: Styles.fontSize24.copyWith(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                Text(
                  "+",
                  style: Styles.fontSize24.copyWith(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

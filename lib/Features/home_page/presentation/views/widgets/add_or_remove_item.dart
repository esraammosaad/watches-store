import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';

class AddOrRemoveItem extends StatefulWidget {
  const AddOrRemoveItem({
    super.key,
    required this.item,
  });

  final ProductsModel item;

  @override
  State<AddOrRemoveItem> createState() => _AddOrRemoveItemState();
}

class _AddOrRemoveItemState extends State<AddOrRemoveItem> {
  int numberOfItems = 1;

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
          child: Image.asset(widget.item.image),
        ),
        Positioned(
          bottom: -18,
          right: 25,
          child: Container(
            height: 36,
            width: 148,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color: Colors.black.withOpacity(0.7),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    if (numberOfItems >= 1) {
                      numberOfItems--;
                    }
                    setState(
                      () {},
                    );
                  },
                  child: Text(
                    "-",
                    style: Styles.fontSize24.copyWith(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Text(
                  "$numberOfItems",
                  style: Styles.fontSize24.copyWith(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    numberOfItems++;
                    setState(
                      () {},
                    );
                  },
                  child: Text(
                    "+",
                    style: Styles.fontSize24.copyWith(
                      color: Colors.white.withOpacity(0.5),
                    ),
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

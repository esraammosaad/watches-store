import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4, bottom: 12),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Card(
              elevation: 12,
              shadowColor: const Color(0x80000000),
              color: const Color(0xB2FFFFFF),
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      bottomRight: Radius.circular(32)),
                  borderSide: BorderSide(color: Color(0x80000000), width: 1)),
              child: ListTile(
                contentPadding: const EdgeInsets.only(
                    left: 34, top: 13, bottom: 13, right: 8),
                title: Text(
                  "Piaget Tribute To The Altiplano",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.fontSize16.copyWith(
                      color: const Color(0xB2000000),
                      fontWeight: FontWeight.w600),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/flat-color-icons_like.png',
                  ),
                ),
              ),
            ),
          ),
          CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.16,
            backgroundColor: const Color(0xB2F9F0F0),
            backgroundImage: const AssetImage('assets/icons/Ellipse4.png'),
          )
        ],
      ),
    );
  }
}
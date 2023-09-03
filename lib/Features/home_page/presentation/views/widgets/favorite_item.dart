import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';
import '../../manager/favorite_cubit/favorite_cubit.dart';
import '../item_details_view.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4, bottom: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemDetailsView(
                item: BlocProvider.of<FavoriteCubit>(context)
                    .favoriteItems[index],
              ),
            ),
          );
        },
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
                    bottomRight: Radius.circular(32),
                  ),
                  borderSide: BorderSide(
                    color: Color(0x80000000),
                    width: 1,
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                      left: 34, top: 13, bottom: 13, right: 8),
                  title: Text(
                    BlocProvider.of<FavoriteCubit>(context)
                        .favoriteItems[index]
                        .description!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.fontSize16.copyWith(
                        color: const Color(0xB2000000),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      BlocProvider.of<FavoriteCubit>(context).getFavoriteItems(
                        item: BlocProvider.of<FavoriteCubit>(context)
                            .favoriteItems[index],
                      );
                    },
                    icon: const Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.16,
              backgroundColor: const Color(0xB2F9F0F0),
              backgroundImage: AssetImage(
                BlocProvider.of<FavoriteCubit>(context)
                    .favoriteItems[index]
                    .image,
              ),
            )
          ],
        ),
      ),
    );
  }
}

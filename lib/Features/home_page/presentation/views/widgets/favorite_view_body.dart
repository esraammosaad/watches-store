import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:watsh_store/Features/home_page/presentation/views/home_page_view.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import '../../manager/favorite_cubit/favorite_cubit.dart';
import 'favorite_item.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: buildBoxDecorationColor(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, left: 8, right: 16, bottom: 25),
              child: CustomTitle(
                text: "Favorite",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePageView(),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<FavoriteCubit, FavoriteState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemBuilder: (context, index) => FavoriteItem(index: index),
                    itemCount: BlocProvider.of<FavoriteCubit>(context)
                        .favoriteItems
                        .length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

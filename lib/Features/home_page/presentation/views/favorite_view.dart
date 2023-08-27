import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavoriteViewBody(),
    );
  }
}

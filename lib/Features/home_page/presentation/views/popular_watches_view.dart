import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/popular_watches_view_body.dart';
class PopularWatchesView extends StatelessWidget {
  const PopularWatchesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(


      body: PopularWatchesViewBody(),
    );
  }
}

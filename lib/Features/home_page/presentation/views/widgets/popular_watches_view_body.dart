import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/popular_item.dart';
import 'package:watsh_store/core/utils/widgets/custom_title.dart';
import '../../../../../core/utils/styles.dart';

class PopularWatchesViewBody extends StatelessWidget {
  const PopularWatchesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:
                EdgeInsets.only(top: 40.0, left: 10, right: 30, bottom: 13),
            child: CustomTitle(
              text: 'Popular Watches',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => const PopularItem(),
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}

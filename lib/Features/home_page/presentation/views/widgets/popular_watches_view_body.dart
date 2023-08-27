import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/popular_item.dart';
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
          Padding(
            padding: const EdgeInsets.only(
                top: 40.0, left: 10, right: 30, bottom: 13),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.black,
                    )),
                const SizedBox(width: 10,),

                Text(
                  'Popular Watches',
                  style: Styles.fontSize24.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context,index)=>const PopularItem(),itemCount: 3,))

        ],
      ),
    );
  }
}


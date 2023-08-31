import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/data/models/brands_model.dart';
import 'package:watsh_store/Features/home_page/presentation/views/item_details_view.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/popular_item.dart';
import 'package:watsh_store/core/utils/widgets/custom_title.dart';
import '../../../../../core/utils/styles.dart';

class PopularWatchesViewBody extends StatelessWidget {
  const PopularWatchesViewBody({Key? key, required this.items}) : super(key: key);
 final List<ProductsModel> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding:
                const EdgeInsets.only(top: 16.0, left: 8, right: 16, bottom: 8),
            child: CustomTitle(
              text: 'Popular Watches',onPressed: () {
              Navigator.pop(context);
            },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>  PopularItem(index: index,item: items, onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetailsView(item: items[index]))); }, ),
              itemCount: items.length,
            ),
          )
        ],
      ),
    );
  }
}

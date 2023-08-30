import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watsh_store/core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_title.dart';
import 'custom_search_bar.dart';
import 'custom_search_item.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: Column(
        children: [
           Padding(
            padding:
                const EdgeInsets.only(top: 30.0, right: 16, left: 16, bottom: 16),
            child: CustomTitle(text: 'Search',onPressed: () {
              Navigator.pop(context);
            },),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20, right: 8, left: 8),
            child: CustomSearchBar(),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffD3D3D3),
                    Color(0xffBCBCBC),
                    Color(0xff8C8C8C),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 27,
                        top: 24,
                      ),
                      child: Text(
                        "last search",
                        style: Styles.fontSize24.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => const CustomSearchItem(),
                      itemCount: 6,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

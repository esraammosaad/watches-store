import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/search_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/all_brands_view_body.dart';
import '../../data/models/brands_model.dart';

class AllBrandsView extends StatelessWidget {
  const AllBrandsView({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllBrandsViewBody(

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/all_brands_view_body.dart';

import '../../data/models/brands_model.dart';


class AllBrandsView extends StatelessWidget{

   AllBrandsView({super.key,required this.brands,required this.productItems});
  List <ProductsModel> brands;
  List <ProductsModel> productItems;



  @override
  Widget build(BuildContext context) {
    return   Scaffold(




      body:  AllBrandsViewBody(brands:brands,productItems:productItems , ) ,

    );
  }
}


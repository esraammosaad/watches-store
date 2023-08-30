import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/brand-items_view_body.dart';
import '../../data/models/brands_model.dart';

class BrandItemsView extends StatelessWidget {
  const BrandItemsView({
    super.key,
    required this.brandItem,
    required this.brandName,
  });

  final List<ProductsModel> brandItem;
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BrandItemsViewBody(
        brandItems: brandItem,
        brandName: brandName,
      ),
    );
  }
}

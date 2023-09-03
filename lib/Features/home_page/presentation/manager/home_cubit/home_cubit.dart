import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import '../../../data/models/brands_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<ProductsModel> productItems = [
    ProductsModel(
      image: 'assets/images/omega.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'Omega',
      price: 500,
      id: 0,
      productBrand: 'Omega',
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/piaget.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'Piaget',
      price: 500,
      id: 1,
      productBrand: 'Jaeger',
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/meister.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'meister',
      price: 500,
      id: 2,
      productBrand: 'Omega',
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/piaget.png',
      description:
          "Quam nostrum nihil consequatur autem enim. Excepturi architecto quis. Deserunt tenetur accusamus voluptatum fuga enim. Quia modi in est ea dolor voluptatem provident repellat. ",
      productName: 'Piaget',
      price: 500,
      id: 3,
      productBrand: 'TAG',
      isFavorite: false,
    ),
  ];
  PageController controller = PageController();
  List<ProductsModel> brands = [
    ProductsModel(
      image: 'assets/images/omega.png',
      productBrand: 'Omega',
      id: 0,
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/tag.png',
      productBrand: 'TAG',
      id: 1,
      isFavorite: false,
    ),
    ProductsModel(
      image: 'assets/images/jaeger.png',
      productBrand: 'Jaeger',
      id: 2,
      isFavorite: false,
    ),
  ];

  String? brandName;
}

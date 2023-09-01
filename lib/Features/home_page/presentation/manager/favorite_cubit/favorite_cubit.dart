import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home_page/data/models/brands_model.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
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

  List<ProductsModel> favoriteItems = [];

  void getFavoriteItems({required ProductsModel item}) {
    emit(FavoriteLoading());

    if (!favoriteItems.contains(item)) {
      favoriteItems.add(item);
      item.isFavorite = true;
      emit(FavoriteSuccess());
    } else if (favoriteItems.contains(item)) {
      favoriteItems.remove(item);
      item.isFavorite = false;
      emit(FavoriteRemove());
    }
  }
}

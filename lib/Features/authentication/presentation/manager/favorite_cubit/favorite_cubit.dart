

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home_page/data/models/brands_model.dart';
part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  List <ProductsModel> favoriteItems=[];
  bool isFavorite=false;


  void getFavoriteItems({required ProductsModel item}){
    emit(FavoriteLoading());

    if (!favoriteItems.contains(item)) {
      favoriteItems.add(item);
      isFavorite=true;
      emit(FavoriteSuccess());

    }else if(favoriteItems.contains(item)){
      favoriteItems.remove(item);
      isFavorite=false;
      emit(FavoriteRemove());


    }




  }
}

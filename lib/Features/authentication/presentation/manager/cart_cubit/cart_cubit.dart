
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/home_page/data/models/brands_model.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  List <ProductsModel> cartItems=[];
  double totalPrice=0;
  void getCartItems({required ProductsModel item}){
    emit(CartLoading());

    if (!cartItems.contains(item)) {
      cartItems.add(item);
      totalPrice = totalPrice + item.price!;
    }
    emit(CartSuccess());



  }
}

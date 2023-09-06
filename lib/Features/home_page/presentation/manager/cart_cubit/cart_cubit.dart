import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/home_page/data/models/brands_model.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  List<ProductsModel> cartItems = [];
  double totalPrice = 0;

  Map itemQuantity(item) {
    var quantity = {};
    for (var element in cartItems) {
      if (!quantity.containsKey(element)) {
        quantity[element] = 1;
      } else {
        quantity[element] += 1;
      }
    }
    return quantity;
  }

  void removeItem({required ProductsModel item}) {
    try {
      if (cartItems.remove(item)) {
        totalPrice -= item.price!;
        if (totalPrice < 0) {
          totalPrice = 0;
        }
      }
      emit(CartSuccess());
    } catch (e) {
      print(e);
    }
  }

  void getCartItems({required ProductsModel item}) {
    emit(CartLoading());
    cartItems.add(item);
    totalPrice = totalPrice + item.price!;
    emit(CartSuccess());
  }

  reset() {
    cartItems.clear();
    totalPrice = 0;
    emit(ResetCart());
  }
}

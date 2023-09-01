part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class CartLoading extends CartState {}
class CartSuccess extends CartState {}
class CartFailed extends CartState {}
class ResetCart extends CartState {}


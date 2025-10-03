part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartItemInitial extends CartState {}

final class AddProductToCart extends CartState {}

final class RemoveProductFromCart extends CartState {}

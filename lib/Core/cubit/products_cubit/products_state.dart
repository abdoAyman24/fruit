part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class Productsloading extends ProductsState {}

final class ProductsFailure extends ProductsState {
  final String errorMessage;
  ProductsFailure(this.errorMessage);
}

final class ProductsSuccess extends ProductsState {
  final List<ProductEntity> products;

  ProductsSuccess({required this.products});
}

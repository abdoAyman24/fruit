import 'package:bloc/bloc.dart';
import 'package:fruit_hup/Core/Product_Repo/product_repo.dart';
import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(ProductsInitial());

  final ProductRepo productRepo;

  Future<void> getProducts() async {
    emit(Productsloading());
    var result = await productRepo.getProduct();
    result.fold(
      (failure) {
        emit(ProductsFailure(failure.message));
      },
      (products) {
        emit(ProductsSuccess(products: products));
      },
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(Productsloading());
    var result = await productRepo.bestSellingProduct();
    result.fold(
      (failure) {
        emit(ProductsFailure(failure.message));
      },
      (products) {
        emit(ProductsSuccess(products: products));
      },
    );
  }
}

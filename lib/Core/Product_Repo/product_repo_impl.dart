import 'package:dartz/dartz.dart';
import 'package:fruit_hup/Core/Product_Repo/product_repo.dart';
import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:fruit_hup/Core/error/auth_faluire_service.dart';
import 'package:fruit_hup/Core/model/product_model.dart';
import 'package:fruit_hup/Core/services/data_base_service.dart';
import 'package:fruit_hup/Core/utils/backEnd_endPoint.dart';

class ProductRepoImpl implements ProductRepo {
  final DataBaseService dataBaseService;

  ProductRepoImpl({required this.dataBaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> bestSellingProduct() async {
    try {
      var result =
          await dataBaseService.getData(
                path: BackendEndpoint.getProduct,
                query: {
                  'orderBy': 'sellingCount',
                  'descending': true,
                  'limit': 10,
                },
              )
              as List<Map<String, dynamic>>;
      List<ProductModel> products = result
          .map((e) => ProductModel.fromJson(e))
          .toList();
      List<ProductEntity> entity = products.map((e) => e.toEntity()).toList();
      // List<ProductEntity> pro = products.map((e)=>e.toEntity(e)).toList();
      return Right(entity);
    } catch (e) {
      return left(ServerFailure(message:'error When get best selling product'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProduct() async {
    try {
      var result =
          await dataBaseService.getData(path: BackendEndpoint.getProduct)
              as List<Map<String, dynamic>>;
      List<ProductEntity> products = result
          .map((e) => ProductModel.fromJson(e).toEntity())
          .toList();
      // List<ProductEntity> pro = products.map((e)=>e.toEntity(e)).toList();
      return Right(products);
    } catch (e) {
      return left(ServerFailure(message: 'error When get all product'));
    }
  }
}

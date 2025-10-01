import 'package:dartz/dartz.dart';
import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:fruit_hup/Core/error/auth_faluire_service.dart';

abstract class ProductRepo {

  Future<Either<Failure,List<ProductEntity>>> getProduct();
  Future <Either<Failure,List<ProductEntity>>> bestSellingProduct();
}
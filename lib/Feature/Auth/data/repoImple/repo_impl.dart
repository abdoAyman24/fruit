import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_hup/Core/error/auth_faluire_service.dart';
import 'package:fruit_hup/Core/error/exception.dart';
import 'package:fruit_hup/Core/services/firebase_auth_service.dart';
import 'package:fruit_hup/Feature/Auth/data/Model/user_model.dart';
import 'package:fruit_hup/Feature/Auth/domain/Entity/user_entity.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';

class RepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  RepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmaiAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.CreateUserWithEmaiAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebase(user, name));
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      log(
        'Exception in RepoImpl on Create Email And Password : ${e.toString()}',
      );
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> SignInWithEmaiAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.SignInWithEmailAndPassword(
        email,
        password,
      );
      return Right(UserModel.fromFirebase(user, ''));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}

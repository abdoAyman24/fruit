import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/Core/error/auth_faluire_service.dart';
import 'package:fruit_hup/Core/error/exception.dart';
import 'package:fruit_hup/Core/services/data_base_service.dart';
import 'package:fruit_hup/Core/services/firebase_auth_service.dart';
import 'package:fruit_hup/Core/services/shared_prefrences_singlton.dart';
import 'package:fruit_hup/Core/utils/backEnd_endPoint.dart';
import 'package:fruit_hup/Feature/Auth/data/Model/user_model.dart';
import 'package:fruit_hup/Feature/Auth/domain/Entity/user_entity.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';
import 'package:fruit_hup/constance.dart';

class RepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;
  RepoImpl({required this.dataBaseService, required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmaiAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.CreateUserWithEmaiAndPassword(
        email: email,
        password: password,
      );
      UserEntity userEntity = UserModel.fromFirebase(user, name);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      deleteUser(user);
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      deleteUser(user);
      log(
        'Exception in RepoImpl on Create Email And Password : ${e.toString()}',
      );
      return Left(ServerFailure(message: e.toString()));
    }
  }

  void deleteUser(User? user) {
    if (user != null) {
      firebaseAuthService.deleteUser();
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
      UserEntity userEntity = await getUserData(id: user.uid);
      await saveUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> SignInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      UserEntity userEntity = UserModel.fromFirebase(user, user.displayName!);
      bool checkUserISExist = await dataBaseService.checkIfUserExist(
        document: user.uid,
        path: BackendEndpoint.checkIfUserExist,
      );
      if (checkUserISExist) {
        await getUserData(id: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
     await saveUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      deleteUser(user);
      return left(ServerFailure(message: e.message));
    } catch (e) {
      deleteUser(user);
      log(
        'Exception in RepoImpl on Create Email And Password : ${e.toString()}',
      );
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseService.addUserData(
      path: BackendEndpoint.userCollection,
      data: UserModel.fromEntity(user).toMap(),
      documntId: user.id,
    );
  }

  @override
  Future<UserEntity> getUserData({required String id}) async {
    var user = await dataBaseService.getData(
      path: BackendEndpoint.getCollection,
      documntId: id,
    );
    return UserModel.fromJeson(user);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = await jsonEncode(UserModel.fromEntity(user).toMap());
    await SharedPreferencesSingleton.saveUSer(KUSerData, jsonData);
  }
}

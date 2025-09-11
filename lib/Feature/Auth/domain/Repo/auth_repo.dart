import 'package:dartz/dartz.dart';
import 'package:fruit_hup/Core/error/auth_faluire_service.dart';
import 'package:fruit_hup/Feature/Auth/domain/Entity/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmaiAndPassword(
    String email,
    String password,
    String name,
  );
   Future<Either<Failure, UserEntity>>SignInWithEmaiAndPassword(
    String email,
    String password,
  );
}

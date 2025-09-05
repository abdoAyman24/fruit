import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/Core/error/exception.dart';

class FirebaseAuthService {
  Future<User> CreateUserWithEmaiAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('The account already exists for that email.');
      } else {
        throw CustomException('An unknown error occurred.Try again later.');
      }
    } catch (e) {
      throw CustomException('An unknown error occurred.Try again later.');
    }
  }
}

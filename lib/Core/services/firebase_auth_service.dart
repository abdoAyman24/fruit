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
        print('FirebaseAuthException: ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException('كلمة المرور ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('لقد قمت بالتسجيل مسبقا');
      } else {
        throw CustomException('حدث خطأ أثناء التسجيل ,اعد المحاولة مرةاخرى');
      }
    } catch (e) {
      throw CustomException('حدث خطأ أثناء التسجيل ,اعد المحاولة مرةاخرى');
    }
  }
}

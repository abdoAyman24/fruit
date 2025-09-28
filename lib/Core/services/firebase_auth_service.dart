import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/Core/error/exception.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future deleteUser() async {
    FirebaseAuth.instance.currentUser!.delete();
  }

  Future<bool> isSignIn() async {
   return FirebaseAuth.instance.currentUser != null;
  }

  Future<User> CreateUserWithEmaiAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService on Create Email And Password : ${e.code}',
      );
      print('FirebaseAuthException: ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException('كلمة المرور ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('لقد قمت بالتسجيل مسبقا');
      } else if (e.code == 'network-request-failed') {
        throw CustomException('تأكد من إتصالك بالانترنت');
      } else {
        throw CustomException('حدث خطأ أثناء التسجيل ,اعد المحاولة مرةاخرى');
      }
    } catch (e) {
      throw CustomException('حدث خطأ أثناء التسجيل ,اعد المحاولة مرةاخرى');
    }
  }

  Future<User> SignInWithEmailAndPassword(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.toLowerCase().trim(),
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException('الايميل او الباسورد غير صحيح');
      } else if (e.code == 'wrong-password') {
        throw CustomException('الايميل او الباسورد غير صحيح');
      } else if (e.code == 'invalid-credential') {
        throw CustomException('الايميل او الباسورد غير صحيح');
      } else if (e.code == 'network-request-failed') {
        throw CustomException('تأكد من إتصالك بالانترنت');
      } else {
        throw CustomException('حدث خطأ أثناء التسجيل ,اعد المحاولة مرةاخرى');
      }
    } catch (e) {
      throw CustomException('حدث خطأ أثناء التسجيل ,اعد المحاولة مرةاخرى');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
      serverClientId:
          '908705453895-6ivl5f77pmagbgh36ck3uno4ar6oevhg.apps.googleusercontent.com',
    );

    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      throw CustomException('Google sign-in aborted by user');
    }

    // Obtain the auth details
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Sign in to Firebase with the Google [UserCredential]
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}

import 'package:bloc/bloc.dart';
import 'package:fruit_hup/Feature/Auth/domain/Entity/user_entity.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  Future<void> SignInWithEmailAndPassword(String email, String password) async {
    emit(SignInLoad());
    var result = await authRepo.SignInWithEmaiAndPassword(email, password);
    return result.fold(
      (Left) {
        emit(SignInFailuer(errorMessage: Left.message));
      },
      (Right) {
        emit(SignInSuccess(user: Right));
      },
    );
  }

  Future<void> SignInWithGoogle() async {
    emit(SignInLoad());
    var result = await authRepo.SignInWithGoogle();
    return result.fold(
      (left) {
        emit(SignInFailuer(errorMessage: left.message));
      },
      (right) {
        emit(SignInSuccess(user: right));
      },
    );
  }
}

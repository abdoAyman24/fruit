import 'package:bloc/bloc.dart';
import 'package:fruit_hup/Feature/Auth/domain/Entity/user_entity.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sin_up_state.dart';

class SinUpCubit extends Cubit<SinUpState> {
  final AuthRepo authRepo;
  SinUpCubit(this.authRepo) : super(SinUpInitial());

  Future<void> CreateUserWithEmaiAndPAssword({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SinUpLoading());

    final result = await authRepo.createUserWithEmaiAndPassword(
      email,
      password,
      name,
    );

    result.fold((L) {
      emit(SinUpFailure(L.message));
    }, (R) {
      emit(SinUpSucces(R));
    });
  }
}

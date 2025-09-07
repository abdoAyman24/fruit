part of 'sin_up_cubit.dart';

@immutable
sealed class SinUpState {}

final class SignUpInitial extends SinUpState {}

final class SignUpLoading extends SinUpState {}

final class SinUpSucces extends SinUpState {
  final UserEntity userEntity;
  SinUpSucces(this.userEntity);
}

final class SignUpFailure extends SinUpState {
  final String errorMessage;
  SignUpFailure(this.errorMessage);
}

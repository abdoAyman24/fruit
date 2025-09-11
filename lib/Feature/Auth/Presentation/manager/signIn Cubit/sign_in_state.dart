part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoad extends SignInState {}

final class SignInSuccess extends SignInState {
  final UserEntity user;

  SignInSuccess({required this.user});
}

final class SignInFailuer extends SignInState {
  final String errorMessage;

  SignInFailuer({required this.errorMessage});
}

part of 'sin_up_cubit.dart';

@immutable
sealed class SinUpState {}

final class SinUpInitial extends SinUpState {}
final class SinUpLoading extends SinUpState {}
final class SinUpSucces extends SinUpState {
  final UserEntity userEntity;
  SinUpSucces(this.userEntity);
}
final class SinUpFailure extends SinUpState {
  final String errorMessage;
  SinUpFailure(this.errorMessage);
}

part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class LoadingState extends SigninState {}

final class SucessState extends SigninState {}

final class FailureState extends SigninState {}

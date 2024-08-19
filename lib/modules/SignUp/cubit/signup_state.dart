part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class LoadingState extends SignupState {}

final class SucessState extends SignupState {}

final class FailureState extends SignupState {}

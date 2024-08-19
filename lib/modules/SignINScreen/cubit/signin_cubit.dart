import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:geeta_shop/data/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email;
  String? passwrod;

  void signIn() async {
    if (formKey.currentState?.validate() != true) return;
    formKey.currentState!.save();
    emit(LoadingState());
    final response = await UserRepoApi.signIn(email!, passwrod!);
    if (response != null) {
      emit(SucessState());
    } else {
      emit(FailureState());
    }
  }
}

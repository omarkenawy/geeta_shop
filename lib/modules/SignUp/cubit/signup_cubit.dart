import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:geeta_shop/data/models/user.dart';
import 'package:geeta_shop/data/repos/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  User? user;
  String? passwrod;

  void SignUp(BuildContext context) async {
    if (formKey.currentState?.validate() == false) return null;
    user = User();
    formKey.currentState!.save();
    emit(LoadingState());

    final newAccount = await UserRepoApi.signUp(user!, passwrod!);
    if (newAccount != null) {
      emit(SucessState());
    } else {
      emit(FailureState());
    }
  }
}

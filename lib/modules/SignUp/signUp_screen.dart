import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/customButton.dart';
import 'package:geeta_shop/global/widgets/customTextFormField.dart';
import 'package:geeta_shop/modules/SignUp/cubit/signup_cubit.dart';
import 'package:geeta_shop/modules/SignUp/widgets/topUpscreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupCubit>(
      create: (context) => SignupCubit(),
      child: Builder(builder: (context) {
        final SignUpCubitRead = context.read<SignupCubit>();
        return Scaffold(
          body: Column(
            children: [
              const TopuUpScreen(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Form(
                      key: SignUpCubitRead.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Name",
                            style: TextStyle(
                                fontFamily: Constans.mainFont,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Customtextformfield(
                            hintText: "Your Full Name",
                            obscureText: true,
                            PrefIcon: Icon(Icons.person),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Required';
                              }
                              if (value.length < 5) {
                                return 'Name must be more then 5 chartahers';
                              }
                              return null;
                            },
                            onSave: (newValue) =>
                                SignUpCubitRead.user!.name = newValue,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Email Address",
                            style: TextStyle(
                                fontFamily: Constans.mainFont,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Customtextformfield(
                            hintText: "Enter Your Email",
                            obscureText: true,
                            PrefIcon: Icon(Icons.email_outlined),
                            validator: (value) {
                              if (value == null ||
                                  value.trim().isEmpty == true) {
                                return 'Please enter email';
                              }
                              if (value.contains('@') == false) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            onSave: (newValue) =>
                                SignUpCubitRead.user!.email = newValue,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                                fontFamily: Constans.mainFont,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Customtextformfield(
                            hintText: "Enter Your Password",
                            obscureText: true,
                            PrefIcon: Icon(Icons.lock_outline),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Reqired';
                              }
                              return null;
                            },
                            onSave: (newValue) =>
                                SignUpCubitRead.passwrod = newValue,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          BlocBuilder<SignupCubit, SignupState>(
                            builder: (context, state) => state is LoadingState
                                ? Center(child: CircularProgressIndicator())
                                : Center(
                                    child: SizedBox(
                                      width: 320,
                                      height: 50,
                                      child: CustomButton(
                                          onPressed: () {
                                            SignUpCubitRead.SignUp(context);
                                            Navigator.pushNamed(
                                                context, "home screen");
                                          },
                                          text: "Register",
                                          BorderColor: Constans.darkPurple,
                                          Buttoncolor: Constans.darkPurple,
                                          ButtonTextColor: Constans.white,
                                          Wsize: 20,
                                          Hsize: 20),
                                    ),
                                  ),
                          ),
                          Center(
                            child: Text(
                              "By  joining I agree to receive emails from Geeta.",
                              style: TextStyle(
                                  fontSize: 12, color: Constans.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/customButton.dart';
import 'package:geeta_shop/global/widgets/customTextFormField.dart';
import 'package:geeta_shop/modules/SignINScreen/cubit/signin_cubit.dart';
import 'package:geeta_shop/modules/SignINScreen/widgets/topScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SigninCubit>(
      create: (context) => SigninCubit(),
      child: Builder(builder: (context) {
        final SignInCubitRead = context.read<SigninCubit>();
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: Column(
            children: [
              TopScreen(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Form(
                      key: SignInCubitRead.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            hintText: "Email",
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
                                SignInCubitRead.email = newValue,
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
                                SignInCubitRead.passwrod = newValue,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: ischecked,
                                  onChanged: (newValue) {
                                    setState(() {
                                      ischecked = newValue!;
                                    });
                                  }),
                              Text(
                                "Remember me",
                                style: TextStyle(
                                    fontFamily: Constans.mainFont,
                                    fontSize: 12),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Forgot your password?",
                                    style: TextStyle(fontSize: 12),
                                  ))
                            ],
                          ),
                          BlocConsumer<SigninCubit, SigninState>(
                            listener: (context, state) {
                              if (state is SucessState) {
                                Navigator.of(context).pushNamed('home screen');
                              }
                            },
                            builder: (context, state) => state is LoadingState
                                ? Center(child: CircularProgressIndicator())
                                : Center(
                                    child: SizedBox(
                                      width: 320,
                                      height: 50,
                                      child: CustomButton(
                                          onPressed: () {
                                            SignInCubitRead.signIn();
                                          },
                                          text: "LOG IN",
                                          BorderColor: Constans.darkPurple,
                                          Buttoncolor: Constans.darkPurple,
                                          ButtonTextColor: Constans.white,
                                          Wsize: 20,
                                          Hsize: 20),
                                    ),
                                  ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Not registered yet?",
                                style: TextStyle(
                                    fontSize: 12, color: Constans.black),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "sign up");
                                  },
                                  child: const Text(
                                    "Create an account",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ))
                            ],
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

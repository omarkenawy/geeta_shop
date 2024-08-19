import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geeta_shop/modules/CartScreen/cartScreen.dart';
import 'package:geeta_shop/modules/FavouriteScreen/favouriteScreen.dart';
import 'package:geeta_shop/modules/HomeScreen/cubit/homescreen_cubit.dart';
import 'package:geeta_shop/modules/HomeScreen/homeScreen.dart';
import 'package:geeta_shop/modules/PaymentScreen/paymentScreen.dart';
import 'package:geeta_shop/modules/SignINScreen/signIn_Screen.dart';
import 'package:geeta_shop/modules/SignUp/signUp_screen.dart';
import 'package:geeta_shop/modules/firstScreen/fisrtScreen.dart';
import 'package:geeta_shop/modules/splashScreen/splashScreen.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(
    OKToast(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomescreenCubit(),
          )
        ],
        child: MaterialApp(
          title: 'Geeta Shop',
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
          routes: {
            "splash screen": (context) => const SplashScreen(),
            "first screen": (context) => const FirstScreen(),
            "sign in": (context) => const SignInScreen(),
            "sign up": (context) => const SignupScreen(),
            "home screen": (context) => const HomeScreen(),
            "cart screen": (context) => CartScreen(),
            "favourite screen": (context) => FavouriteScreen(),
            "payment screen": (context) => PaymentScreen()
          },
          initialRoute: "home screen",
        ),
      ),
    ),
  );
}

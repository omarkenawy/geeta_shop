import 'package:flutter/material.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/customButton.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToFirstScreen();
  }

  void goToFirstScreen() {
    Future.delayed(const Duration(seconds: 6))
        .then((value) => {Navigator.of(context).pushNamed("first screen")});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              child: Image.asset(
                "assets/images/splashImage.jfif",
                fit: BoxFit.cover,
              )),
          Positioned(
            left: 65,
            bottom: 139,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "Geeta.",
                    style: TextStyle(
                        color: Constans.white,
                        fontSize: 100,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                CustomButton(
                    onPressed: () {},
                    Buttoncolor: Colors.transparent,
                    ButtonTextColor: Constans.white,
                    text: "SHOP NOW",
                    TextColor: Colors.white,
                    BorderColor: Constans.white,
                    Wsize: 90,
                    Hsize: 90),
              ],
            ),
          )
        ],
      ),
    );
  }
}

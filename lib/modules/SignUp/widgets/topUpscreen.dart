import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geeta_shop/constans.dart';

class TopuUpScreen extends StatelessWidget {
  const TopuUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          color: Constans.darkPurple.withAlpha(150),
        ),
        Positioned(
          left: 30,
          top: 68,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Constans.white,
                size: 25,
              )),
        ),
        Positioned(
            top: 100,
            left: 190,
            child: SvgPicture.asset("assets/svgs/Vector.svg")),
        Positioned(
            top: 38.57,
            left: 262,
            child: SvgPicture.asset("assets/svgs/Fashion.svg")),
        Positioned(
          top: 150,
          left: 41,
          child: Text(
            "Get's started with Geeta.",
            style: TextStyle(
                color: Constans.white,
                fontWeight: FontWeight.bold,
                fontFamily: Constans.mainFont,
                fontSize: 24),
          ),
        ),
        Positioned(
          top: 182,
          left: -2,
          child: SizedBox(
            height: 37,
            width: 286,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "sign in");
              },
              child: Text(
                "Already have an account? Log in",
                style: TextStyle(
                    color: Constans.white,
                    fontFamily: Constans.mainFont,
                    fontSize: 14),
              ),
            ),
          ),
        ),
        Positioned(
          top: 279,
          left: 41,
          child: Text(
            "REGISTER",
            style: TextStyle(
                fontFamily: Constans.mainFont,
                color: Constans.white,
                fontSize: 18,
                fontWeight: FontWeight.w900),
          ),
        )
      ],
    );
  }
}

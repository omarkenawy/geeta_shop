import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geeta_shop/constans.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
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
            top: 30,
            left: 262,
            child: SvgPicture.asset("assets/svgs/Fashion.svg")),
        Positioned(
          top: 150,
          left: 45,
          child: Text(
            "Welcome Back!",
            style: TextStyle(
                color: Constans.white,
                fontWeight: FontWeight.bold,
                fontFamily: Constans.mainFont,
                fontSize: 24),
          ),
        ),
        Positioned(
          top: 204,
          left: 44,
          child: SizedBox(
            height: 60,
            width: 286,
            child: Text(
              maxLines: 3,
              "Yay! you're back! Thanks for shopping with us. We have excited deals and promotions going on. grab your oick now!",
              style: TextStyle(
                  fontFamily: Constans.mainFont, color: Constans.white),
            ),
          ),
        ),
        Positioned(
          top: 359,
          left: 43,
          child: Text(
            "LOG IN",
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

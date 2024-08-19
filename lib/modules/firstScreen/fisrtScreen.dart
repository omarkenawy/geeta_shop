import 'package:flutter/material.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/modules/firstScreen/widgets/allItems.dart';
import 'package:geeta_shop/modules/firstScreen/widgets/bottomVectors.dart';
import 'package:geeta_shop/modules/firstScreen/widgets/topVectores.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              child: Image.asset(
                "assets/images/backGroundImage.jfif",
                fit: BoxFit.cover,
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white70,
          ),
          const CustomTopVectores(),
          Positioned(
            left: 150,
            top: 112,
            child: Text(
              "Geeta.",
              style: TextStyle(
                  color: Constans.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: Constans.mainFont),
            ),
          ),
          Positioned(
            left: 80,
            top: 250,
            child: SizedBox(
              height: 400,
              width: 240,
              child: Text(
                textAlign: TextAlign.center,
                maxLines: 2,
                "Create your fashion in your own way",
                style: TextStyle(
                    color: Constans.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: Constans.mainFont),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 350,
            child: SizedBox(
              height: 200,
              width: 340,
              child: Text(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                maxLines: 2,
                "Each men and women has their own style, Geeta help you to create your unique style.",
                style: TextStyle(fontFamily: Constans.mainFont),
              ),
            ),
          ),
          const Positioned(left: 95, top: 452, child: AllItems()),
          const BottomVectors()
        ],
      ),
    );
  }
}

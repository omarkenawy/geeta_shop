import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomVectors extends StatelessWidget {
  const BottomVectors({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 180,
            top: 720,
            child:
                Container(child: SvgPicture.asset("assets/svgs/Vector 3.svg"))),
        Positioned(
            left: 180,
            top: 750,
            child:
                Container(child: SvgPicture.asset("assets/svgs/Vector 8.svg"))),
        Positioned(
            left: 180,
            top: 782,
            child:
                Container(child: SvgPicture.asset("assets/svgs/Vector 9.svg"))),
      ],
    );
  }
}

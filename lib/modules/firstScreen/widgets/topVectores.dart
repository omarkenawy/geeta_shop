import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTopVectores extends StatelessWidget {
  const CustomTopVectores({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(child: SvgPicture.asset("assets/svgs/Vector 6.svg")),
        Container(child: SvgPicture.asset("assets/svgs/Vector 5.svg")),
        Container(child: SvgPicture.asset("assets/svgs/Vector 7.svg")),
      ],
    );
  }
}

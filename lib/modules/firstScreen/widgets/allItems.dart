import 'package:flutter/material.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/customButton.dart';

class AllItems extends StatelessWidget {
  const AllItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 220,
          child: CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, "sign in");
              },
              text: "LOG IN",
              ButtonTextColor: Constans.black,
              BorderColor: Constans.black,
              Wsize: 40,
              Hsize: 20),
        ),
        const SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Container(
              height: 1,
              width: 22,
              color: Colors.black54,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "OR",
              style:
                  TextStyle(color: Constans.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              height: 2,
              width: 22,
              color: Colors.black54,
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        SizedBox(
          height: 50,
          width: 230,
          child: CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, "sign up");
              },
              text: "REGISTER",
              ButtonTextColor: Constans.white,
              BorderColor: Colors.transparent,
              Buttoncolor: Constans.darkPurple,
              Wsize: 40,
              Hsize: 20),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/customTextFormField.dart';

class UpperPaymentScreen extends StatelessWidget {
  const UpperPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name on card",
          style: TextStyle(
              fontSize: 14,
              fontFamily: Constans.mainFont,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Customtextformfield(
          hintText: "Varat Singh Sharma",
          TextColor: Constans.priceColor,
          obscureText: true,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Card number",
          style: TextStyle(
              fontSize: 14,
              fontFamily: Constans.mainFont,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Customtextformfield(
          hintText: "4747  4747  4747  4747",
          TextColor: Constans.priceColor,
          TextSize: 12,
          obscureText: true,
          SufIcon: Icon(Icons.payment),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("data"),
                  Customtextformfield(
                    hintText: "07/21",
                    obscureText: true,
                    TextColor: Constans.priceColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("data"),
                  Customtextformfield(
                    hintText: "474",
                    obscureText: true,
                    TextColor: Constans.priceColor,
                    SufIcon: Icon(Icons.payment),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/bottomButtom.dart';
import 'package:geeta_shop/global/widgets/secondAppBar.dart';
import 'package:geeta_shop/modules/PaymentScreen/widget/upPaymentScreen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCustomAppBar(tittle: "Credit / Debit card"),
      body: Column(
        children: [
          Center(
            child: SizedBox(
                height: 240,
                width: 374,
                child: SvgPicture.asset(
                  "assets/svgs/Card (1).svg",
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 50,
          ),
          Center(child: SvgPicture.asset("assets/svgs/Take a photo icon.svg")),
          Padding(
              padding: const EdgeInsets.all(18.0), child: UpperPaymentScreen()),
          Spacer(),
          BottomCustomButton(
            onPressed: () {},
            text: "USE THIS CARD",
            BorderColor: Constans.darkPurple,
            Buttoncolor: Constans.darkPurple,
            ButtonTextColor: Constans.white,
            Wsize: 0,
            Hsize: 0,
          )
        ],
      ),
    );
  }
}

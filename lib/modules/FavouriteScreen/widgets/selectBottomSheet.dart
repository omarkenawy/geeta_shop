import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/bottomButtom.dart';

class SelectBottomSheet extends StatelessWidget {
  const SelectBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Checkout",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: Constans.mainFont,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "favourite screen");
                      },
                      child: SvgPicture.asset("assets/svgs/Group 6846.svg"))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Delivery",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: Constans.mainFont,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Select Method",
                    style: TextStyle(color: Constans.darkPurple, fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, "payment screen"),
                      child: SvgPicture.asset("assets/svgs/back arrow.svg"))
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Payment",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: Constans.mainFont,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  SvgPicture.asset("assets/svgs/card.svg"),
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/svgs/back arrow.svg"),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "PromoCode",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: Constans.mainFont,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Pick Discount",
                    style: TextStyle(color: Constans.darkPurple, fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset("assets/svgs/back arrow.svg")
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Total Cost",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: Constans.mainFont,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "133.00 USD",
                    style: TextStyle(color: Constans.darkPurple, fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset("assets/svgs/back arrow.svg")
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Text(
              "By placing an order you agree to our Terms And Conditions.",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(color: Constans.priceColor),
            ),
            Spacer(),
            SizedBox(
              height: 54,
              width: 390,
              child: Center(
                child: Stack(
                  children: [
                    BottomCustomButton(
                      onPressed: () {},
                      text: "PLACE ORDER",
                      BorderColor: Constans.darkPurple,
                      Buttoncolor: Constans.darkPurple,
                      ButtonTextColor: Constans.white,
                      Wsize: 0,
                      Hsize: 0,
                    ),
                    Positioned(
                        top: 14,
                        left: 74,
                        child: Icon(
                          Icons.local_shipping_outlined,
                          color: Constans.white,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

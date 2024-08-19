import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/secondAppBar.dart';
import 'package:geeta_shop/modules/CartScreen/widgets/cartItem.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCustomAppBar(
        tittle: "My Cart",
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CartItem(),
            CartItem(),
            CartItem(),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 54,
                  width: 354,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Constans.darkPurple),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svgs/Group 6892.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "GO TO CHECKOUT",
                        style: TextStyle(
                            color: Constans.white,
                            fontFamily: Constans.mainFont),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        color: Constans.secondDark,
                        height: 22,
                        width: 60,
                        child: Text(
                          "Total Price",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

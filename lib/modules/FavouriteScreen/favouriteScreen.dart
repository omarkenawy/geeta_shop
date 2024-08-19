import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/bottomButtom.dart';
import 'package:geeta_shop/global/widgets/secondAppBar.dart';
import 'package:geeta_shop/modules/CartScreen/widgets/cartItem.dart';
import 'package:geeta_shop/modules/FavouriteScreen/widgets/selectBottomSheet.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCustomAppBar(
        tittle: "Favourite",
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
              children: [
                SizedBox(
                  height: 54,
                  width: 390,
                  child: Center(
                    child: Stack(
                      children: [
                        BottomCustomButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return const SelectBottomSheet();
                                });
                          },
                          text: "ADD ALL TO CART",
                          BorderColor: Constans.darkPurple,
                          Buttoncolor: Constans.darkPurple,
                          ButtonTextColor: Constans.white,
                          Wsize: 0,
                          Hsize: 0,
                        ),
                        Positioned(
                            top: 14,
                            left: 74,
                            child:
                                SvgPicture.asset("assets/svgs/Cart icon.svg"))
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

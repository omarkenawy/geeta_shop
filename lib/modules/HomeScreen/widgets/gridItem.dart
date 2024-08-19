import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/data/models/prodcut.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 276,
        width: 170,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Constans.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Container(
              height: 120,
              width: 170,
              color: Constans.gridColor,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(item.image ?? ''),
                  Positioned(
                      left: 120,
                      child: SvgPicture.asset(
                          "assets/svgs/heart-svgrepo-com (1).svg"))
                ],
              ),
            ),
            Expanded(
              child: Text(
                item.description ?? '',
                style: TextStyle(
                    fontFamily: Constans.mainFont,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Text(
                "${item.price} USD",
                style: TextStyle(
                  fontFamily: Constans.mainFont,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ));
  }
}

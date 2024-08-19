import 'package:flutter/material.dart';
import 'package:geeta_shop/constans.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  late int number = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 146,
        width: 354,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Constans.gridColor),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 77,
                  width: 87,
                  color: Colors.transparent,
                  child: Image.asset(
                    "assets/images/jacket 1.png",
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Leather Jacket",
                      style:
                          TextStyle(fontSize: 14, color: Constans.darkPurple),
                    ),
                    Text(
                      "GEETA COLLECTION",
                      style: TextStyle(fontSize: 9, color: Constans.priceColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${28.00} USD",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 122,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.transparent,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        number--;
                                      });
                                    },
                                    icon: Icon(Icons.remove)),
                                Text(
                                  number.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: Constans.mainFont,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {
                                      number++;
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

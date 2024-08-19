import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/data/models/prodcut.dart';
import 'package:geeta_shop/modules/HomeScreen/cubit/homescreen_cubit.dart';
import 'package:geeta_shop/modules/ItemScreen/widgets/itemDetails.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, required this.item});
  final Product item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomescreenCubit, HomeScreenState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    height: 364,
                    color: Constans.gridColor,
                  ),
                  Positioned(
                      top: 80, left: 140, child: Image.network(item.image!)),
                  Positioned(
                    left: 19,
                    top: 78,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "home screen");
                        },
                        icon: Icon(Icons.arrow_back_rounded)),
                  ),
                  Positioned(
                    top: 319,
                    child: Container(
                      height: 629,
                      width: 414,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Constans.white),
                      child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: ItemDetails(
                            item: item,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/data/models/prodcut.dart';
import 'package:geeta_shop/global/widgets/customButton.dart';
import 'package:geeta_shop/modules/HomeScreen/cubit/homescreen_cubit.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.item,
  });
  final Product item;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomescreenCubit, HomeScreenState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.categoryId.toString(),
              style: TextStyle(
                fontSize: 20,
                fontFamily: Constans.mainFont,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  item.name ?? "",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: Constans.mainFont,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Text(
                    "${item.price}",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: Constans.mainFont,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SvgPicture.asset("assets/svgs/Rating.svg"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 122,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Constans.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text(
                        "111",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: Constans.mainFont,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                ),
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constans.gridColor),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.file_upload_outlined)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Description",
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: Constans.mainFont,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              item.description ?? "",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: Constans.mainFont,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Select Size",
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: Constans.mainFont,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "cart screen");
                  },
                  text: "Add to cart",
                  BorderColor: Constans.darkPurple,
                  Buttoncolor: Constans.darkPurple,
                  ButtonTextColor: Constans.white,
                  Wsize: 19,
                  Hsize: 19),
            )
          ],
        );
      },
    );
  }
}

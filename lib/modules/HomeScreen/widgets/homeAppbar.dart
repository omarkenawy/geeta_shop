import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geeta_shop/constans.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: TabBar(padding: EdgeInsets.all(10), tabs: [
        Text(
          "Popular",
          style: TextStyle(fontFamily: Constans.mainFont, fontSize: 17),
        ),
        Text(
          "Men",
          style: TextStyle(fontFamily: Constans.mainFont, fontSize: 17),
        ),
        Text(
          "Women",
          style: TextStyle(fontFamily: Constans.mainFont, fontSize: 17),
        ),
        Text(
          "Sale",
          style: TextStyle(fontFamily: Constans.mainFont, fontSize: 17),
        )
      ]),
      actions: [
        Text(
          "Geeta.",
          style: TextStyle(
              fontFamily: Constans.mainFont,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 75,
        ),
        SvgPicture.asset("assets/svgs/bell-svgrepo-com.svg"),
        const SizedBox(
          width: 5,
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined)),
        const SizedBox(
          width: 5,
        ),
        SvgPicture.asset("assets/svgs/heart-svgrepo-com (1).svg"),
        const SizedBox(
          width: 5,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        const SizedBox(
          width: 5,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.format_align_right_outlined)),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 125);
}

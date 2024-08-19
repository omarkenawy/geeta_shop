import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.tittle, this.showbBackButton = false});

  final String? tittle;
  final bool showbBackButton;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 8,
      leading: showbBackButton
          ? GestureDetector(
              onTap: Navigator.of(context).pop,
              child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    "assets/svgs/back-svgrepo-com.svg",
                    height: 24,
                    width: 24,
                    fit: BoxFit.contain,
                  )),
            )
          : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}

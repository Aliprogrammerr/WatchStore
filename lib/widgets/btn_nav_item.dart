import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/resuorce/color.dart';

import '../compounents/app_text_style.dart';
import '../resuorce/dimens.dart';

class BtnNavItem extends StatelessWidget {
  const BtnNavItem({
    super.key,
    required this.func,
    required this.imageAsset,
    required this.title,
    required this.isActive,
  });
  final void Function() func;
  final String title;
  final String imageAsset;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
          color: LightAppColors.bottomnavColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imageAsset,
                colorFilter: ColorFilter.mode(
                    isActive
                        ? LightAppColors.bottomNavActive
                        : LightAppColors.bottomNavInActive,
                    BlendMode.srcIn),
              ),
              const SizedBox(height: Dimens.small),
              Text(
                title,
                style: isActive
                    ? LightAppTextStyle.bottomNavActive
                    : LightAppTextStyle.bottomNavInActive,
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/app_String.dart';
import 'package:watchstore/resuorce/dimens.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: const Image(image: AssetImage("assets/png/avatar.png")),
        ),
        Dimens.medium.height,
        const Text(
          AppStrings.profile,
          style: LightAppTextStyle.avatarText,
        )
      ],
    );
  }
}

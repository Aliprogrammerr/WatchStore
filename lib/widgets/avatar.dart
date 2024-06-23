import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/app_String.dart';
import 'package:watchstore/resuorce/dimens.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key,required this.file,required this.ontap});
  final Function() ontap; 
  final  file ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: file== null ? Image(image: AssetImage("assets/png/avatar.png")): Image.file(file),
          ),
          Dimens.medium.height,
          const Text(
            AppStrings.profile,
            style: LightAppTextStyle.avatarText,
          )
        ],
      ),
    );
  }
}

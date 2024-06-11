import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/resuorce/dimens.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child:Image(image: AssetImage("assets/png/avatar.png")),
          ),
          Dimens.medium.height,
          Text(AppStrings.profile)

      ],
    ); 
    }
}




import 'package:flutter/material.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';

class AppButtonStyle {
  AppButtonStyle._();


 static ButtonStyle mianButtonStyle =  ButtonStyle(
  backgroundColor: const MaterialStatePropertyAll(LightAppColors.buttonColor),
  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimens.medium),
  ))
 );
}
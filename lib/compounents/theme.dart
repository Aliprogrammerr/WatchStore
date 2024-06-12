import 'package:flutter/material.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';

ThemeData lightTheme(){
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(
      color: Colors.black,),
      primaryColor: LightAppColors.primaryColor, 
      scaffoldBackgroundColor: LightAppColors.scaffoldBackground,
      inputDecorationTheme: InputDecorationTheme(
         filled: true,

         fillColor: MaterialStateColor.resolveWith((states){
          if(states.contains(MaterialState.focused)){
            return LightAppColors.focusedTextfeild;
          }
          else{
            return LightAppColors.unfocusedTextfeild;
          } 
         }),
         contentPadding: const EdgeInsets.all(Dimens.medium),

         enabledBorder:OutlineInputBorder(
           borderRadius: BorderRadius.circular(Dimens.medium),
           borderSide: const BorderSide(color:LightAppColors.borderColor)
         )
      ),
       
  );
}
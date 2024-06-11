import 'package:flutter/material.dart';
import 'package:watchstore/resuorce/color.dart';



class LightAppTextStyle{
  LightAppTextStyle._();

  static const TextStyle title = TextStyle(
    fontFamily: "anjoman",
    fontSize:14,
    fontWeight: FontWeight.w600,
    color: LightAppColors.title
  );
    static const TextStyle selectedTabView = TextStyle(
    fontFamily: "anjoman",
    fontSize:14,
    fontWeight: FontWeight.w600,
    color: LightAppColors.title
  );
  static const TextStyle  discountPrice = TextStyle(
    color: LightAppColors.primaryColor,
    fontSize: 15 , 
    fontFamily: "anjoman"
  );
    static  TextStyle unSelectedTabView = TextStyle(
    fontFamily: "anjoman",
    fontSize:14,
    fontWeight: FontWeight.w600,
    color: const Color.fromARGB(255, 161, 152, 152).withAlpha(125)
  );
   static  TextStyle caption = TextStyle(
    fontFamily: "anjoman",
    fontSize:13,
    fontWeight: FontWeight.w400,
    color: LightAppColors.title.withAlpha(150)
  );
  static const TextStyle hint = TextStyle(
    fontFamily: "anjoman",
    fontSize: 14,
    color: LightAppColors.hint
  );
  static const TextStyle tagitem = TextStyle(
    fontFamily: "anjoman",
    fontSize: 13,
    color: LightAppColors.tagColor
  );
   static const  TextStyle amazing = TextStyle(
    color: LightAppColors.amazingtextColor,
    fontFamily: "anjoman",
    fontWeight: FontWeight.w700,
    fontSize: 23
   );
  static const TextStyle avatarText = TextStyle(
    fontSize: 12,
    fontFamily: "anjoman",
    fontWeight: FontWeight.w300
  );
  static const TextStyle mainButtonStyle = TextStyle(
    fontSize: 15,
    fontFamily:"anjoman",
    fontWeight: FontWeight.w500,
    color: LightAppColors.mainButtonColor
   );
    static const TextStyle primaryTheme = TextStyle(
    fontSize: 15,
    fontFamily:"anjoman",
    fontWeight: FontWeight.w500,
    color: LightAppColors.primaryColor
   );
   static const TextStyle bottomNavActive = TextStyle(
    color: LightAppColors.bottomNavActive , 
    fontWeight: FontWeight.w400,
    fontSize: 12, 
    fontFamily: "anjoman",
   );  
    static const TextStyle bottomNavInActive = TextStyle(
    color: LightAppColors.bottomNavInActive, 
    fontSize: 12, 
    fontFamily: "anjoman",
   );
  static const TextStyle oldPrice = TextStyle(
    color: LightAppColors.oldPrice, 
    fontSize: 12, 
    fontFamily: "anjoman",
    decoration: TextDecoration.lineThrough
   );
     static const TextStyle timer = TextStyle(
    color: LightAppColors.primaryColor, 
    fontSize: 18, 
    fontFamily: "anjoman",
    fontWeight: FontWeight.w600
   );
   static const TextStyle hintSearchBar = TextStyle(
    color: LightAppColors.hintSearchBar , 
    fontSize: 15,
    fontFamily:"anjoman",
    fontWeight: FontWeight.w400
  );
}

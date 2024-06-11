import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/resuorce/color.dart';
import '../compounents/app_text_style.dart';



class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
     margin: EdgeInsets.only(left: 20,right: 20),
     width: size.width,
     height: size.height *0.07 ,
     decoration: BoxDecoration(
       border: Border(bottom: BorderSide(color: LightAppColors.borderColor ,width:3)),
       borderRadius:BorderRadius.all(Radius.circular(40)), ),
     child:  Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         SvgPicture.asset("assets/svg/search.svg"),
         Text(AppStrings.searchProduct,style: LightAppTextStyle.hintSearchBar,),
         Image.asset("assets/png/main_logo.png",width:80,)                   
       ],),);
  }
}
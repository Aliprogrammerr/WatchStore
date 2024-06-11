import 'package:flutter/material.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/dimens.dart';

class AppTextField extends StatelessWidget {
   
  final String label;
  final String hint;
  final String timer;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  TextInputType? keyboardType;

   AppTextField({
  required this.controller,
  required this.hint,
  required this.label,
  this.timer = "",
  this.textAlign = TextAlign.center,
  this.icon = const SizedBox(),
  this.keyboardType
  });
 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  return Padding(padding: EdgeInsets.all(Dimens.medium),
  child:SizedBox(
        width: size.width*.75,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(timer),
          Text(label),
        ],
      ),
      Dimens.medium.height,
      SizedBox(
        width: size.width*.75,
        height: size.height*.07,
        child: TextField(
          textAlign:textAlign,
          controller: controller,
          keyboardType:keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: icon,
          ),
    
    
        ),
    
      )
    ],),
  ) ,
  
  );
  
  }
}














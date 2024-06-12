// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';

class ProductItem extends StatelessWidget {
   const ProductItem({
    super.key,
    required this.price,
    required this.productName,
     this.dicount = 0 ,
     this.oldPrice = 9 ,
     this.timer  = 0 ,
  });
  final int price ;
  final String productName;
  final int oldPrice;
  final int dicount;
  final int timer ;
 

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
      gradient: const LinearGradient(colors: LightAppColors.productBgGradiant , 
      begin: Alignment.topCenter , 
      end:  Alignment.bottomCenter
      ),
       border:Border.all(color: LightAppColors.borderColor,width: 2),
       borderRadius: BorderRadius.circular(Dimens.medium)),
     height: 300,
     width: 200,
     margin: const EdgeInsets.all(9),
     child: Padding(
       padding: const EdgeInsets.all(8),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Image.asset("assets/png/unnamed.png"),
           const SizedBox(height: Dimens.large,),
           Align(
            alignment: Alignment.centerRight,
            child: Text(productName,style: LightAppTextStyle.title,)),
           const SizedBox(height:Dimens.medium,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("${price.seperateWithComma} تومان ",style: LightAppTextStyle.title.copyWith(fontSize:13 ),),
                   
                   Visibility(
                    visible: dicount > 0 ? true : false  ,
                    child: Text(price.seperateWithComma,style:LightAppTextStyle.oldPrice))
                 ],
               ),
               Visibility(
                visible: dicount>0 ? true : false,
                 child: Container(
                   width: 40,
                   height: 20,
                   decoration: BoxDecoration(
                     color: LightAppColors.discoutColor,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child:  Center(child: Text("",style: LightAppTextStyle.bottomNavActive.copyWith(color:LightAppColors.appbar),)
                 ,),),
               )
             ],
           ),
           Dimens.large.height,
           Container(
            width: double.infinity,
            height: 2,
            color: LightAppColors.primaryColor,
           ),
           Dimens.large.height,
           const Text("21:23:11", style: LightAppTextStyle.timer,)
         ],
       ),
     ),
                              );
  }
}

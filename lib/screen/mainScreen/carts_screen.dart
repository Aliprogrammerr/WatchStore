import 'package:flutter/material.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/app_String.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';
import 'package:watchstore/screen/productListScreeen.dart';

// ignore: camel_case_types
class Carts_screen extends StatelessWidget {
  const  Carts_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppbar(child: Align(
            alignment: Alignment.centerRight,
            child: Text(AppStrings.basket)),
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(AppStrings.sendToAddress , style: LightAppTextStyle.caption),
                                Text(AppStrings.lurem , style: LightAppTextStyle.caption,)
                              ],
                            ),
                          )
                        ],),
                        
                      ),
                    const Divider(
                      height: 2,
                      color: Color.fromARGB(255, 200, 199, 199),),
                  
                     SizedBox(
                      width: double.infinity,
                      height: 2500,
                       child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context , index)=> const Cart()),
                     )
                    ],
                  ),
                ),
                Positioned(
                  bottom:0,
                  right: 0,
                  left: 0,
                  child: Container(
                    color: LightAppColors.scaffoldBackground,
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    const Text("مجموع 560000 تومان"),
                   Container(
                    decoration: BoxDecoration(
                      color: LightAppColors.continuebuy,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    width: 120,
                    height: 40,
                    child: const Center(child: Text("ادامه فرایند خرید",style: LightAppTextStyle.mainButtonStyle,),),)
                  ],),
                ))
            
              ],
            ),
            ),
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Dimens.medium),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: LightAppColors.cartBg
      ),
      width: double.infinity,
      height: 160,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0,10,5,10),
          width: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("ساعت شیایومی mi",style: LightAppTextStyle.title,),
              15.height,
              Text("4300000 تومان",style: LightAppTextStyle.caption,),
              5.height,
              const Text("با تخفیف 50000 تومانی",style:LightAppTextStyle.discountPrice,),
              10.height,
              const Divider(color: LightAppColors.borderColor,height: 2,),
              10.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Icon(Icons.tram_sharp,color: LightAppColors.oldPrice,size: 30)),
                Row(
                  children: [
                    const Icon(Icons.next_plan,color: LightAppColors.oldPrice,size: 30,),
                    10.width,
                    Text("1 عدد",style:LightAppTextStyle.caption ,),
                    10.width,
                    const Icon(Icons.next_plan,color: LightAppColors.oldPrice,size: 30),

                  ],
                )
              ],)
            ],
          ),
        ),
        SizedBox(
          width: 110,
          child: Image.asset("assets/png/unnamed.png"))

      ],),
    );
    }
}
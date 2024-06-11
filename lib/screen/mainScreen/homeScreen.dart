import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';
import 'package:watchstore/widgets/carousel_slider.dart';
import 'package:watchstore/widgets/productItem.dart';
import 'package:watchstore/widgets/searchbar.dart';

import '../../widgets/CatItem.dart';
//TODO change the  Sizedbox(heightDimens./large )to ===> dimens.large.height 
class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Searchbar(),
              const AppSlider(),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CatItem(
                      gradient:LightAppColors.catSmartColors,
                      title: AppStrings.smart,
                      svgpath: "assets/svg/clasic.svg",
                    ),
                    CatItem(
                      gradient:LightAppColors.catDesktopColors,
                      title: AppStrings.desktop,
                      svgpath: "assets/svg/digital.svg",
                   
                    ),
                    CatItem(
                      gradient:LightAppColors.catDigitalColors,
                      title: AppStrings.digital,
                      svgpath: "assets/svg/digital.svg",
          
                    ),
                    CatItem(
                      gradient: LightAppColors.productBgGradiant,
                      title: AppStrings.classic,
                      svgpath: "assets/svg/clasic.svg",
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: Dimens.large*3,),



              SingleChildScrollView(
              
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 320,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 13,
                        shrinkWrap: true,  
                        itemBuilder: (context,index){ 
                           return ProductItem(price:4300,productName: "dsh",);
                        }
                    ),
                      ),
                       Fornow()
                                            
                                
                  ],
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class Fornow extends StatelessWidget {
  const Fornow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,

      child: Padding(
        padding: EdgeInsets.fromLTRB(0,20,0,20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_upward),
                Text(AppStrings.viewAll , style:LightAppTextStyle.title.copyWith(fontSize: 13))
              ],
            ),
            const SizedBox(height: Dimens.small),
            Text(AppStrings.amazing,style: LightAppTextStyle.amazing),
        ],),
      ),
    );
  }
}

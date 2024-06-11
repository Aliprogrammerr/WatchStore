import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/resuorce/dimens.dart';
import 'package:watchstore/screen/productListScreeen.dart';




class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: const CustomAppbar(child:Align(
        alignment: Alignment.centerRight,
        child:Text(AppStrings.profile),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/png/avatar.png"),
            ),
            const Text("علی مقدمی",style: LightAppTextStyle.avatarText,),
            const Padding(
              padding: EdgeInsets.all(Dimens.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(AppStrings.activeAddress),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back),
                        Text(AppStrings.lurem)
                      ],
                    ),
                  ),
                   SizedBox(
                    width: 110,
                     child: Row(
                      children: [
                        Text("1122331122"),
                        Icon(Icons.phone_outlined),
                      ],
                    ),

                   ),
                   SizedBox(
                    width: 120,
                     child: Row(
                      children: [
                        Text("09023141595"),
                        Icon(Icons.card_travel),
                      ],
                                       ),
                   ),
                   SizedBox(
                    width: 90,
                     child: Row(
                      children: [
                        Text("علی مقدمی"),
                        Icon(Icons.person),
                      ],
                                       ),
                   )
                ],
              ),
            )
          
          ],
        ),
      ),
    ));
  }
}
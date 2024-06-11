// CartBudget(count: 2,color:isActive ? LightAppColors.bottomNavActive : LightAppColors.bottomNavInActive  ,),

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/resuorce/dimens.dart';
import 'package:watchstore/widgets/cart_baadgget.dart';
import 'package:watchstore/widgets/productItem.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CartBudget(
              count: 2,
            ),
            Row(
              children: [
                const Text(
                  "پرفروش ترین ها",
                  style: LightAppTextStyle.avatarText,
                ),
                Dimens.small.width,
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    "assets/svg/sort.svg",
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/svg/close.svg"))
          ],
        )),
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 60, child: TagList()),
              ProductGridView()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget implements PreferredSize {
  const CustomAppbar({super.key, required this.child});

  @override
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: LightAppColors.boxShadow,
                  blurRadius: 3,
                ),
              ],
              color: LightAppColors.appbar,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: child,
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: LightAppColors.primaryColor,
            ),
            child: const Center(
              child: Text(
                "کلاسیک",
                style: LightAppTextStyle.tagitem,
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
              width: 800,
              height:2500,
              child:
              GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.6
                ),
               itemBuilder: ((context, index) => ProductItem(price: 20000,dicount: 29 ,oldPrice: 2000,productName: "hello") )
               ,
        itemCount: 6,             ),
            );
  }
}

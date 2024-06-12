// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:watchstore/resuorce/color.dart';
import 'package:watchstore/screen/mainScreen/carts_screen.dart';
import 'package:watchstore/screen/mainScreen/homeScreen.dart';
import 'package:watchstore/screen/mainScreen/profiler.dart';

import '../../widgets/btn_nav_item.dart';


class BtnNavigationscreen {
  BtnNavigationscreen._();
  static const home = 0 ;
  static const basket = 1;
  static const profile = 2;
}



class MainScreen extends StatefulWidget {  
   const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BtnNavigationscreen.home ;  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bottomNavheight = size.height *0.1;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: bottomNavheight,
              child: IndexedStack(
                index : selectedIndex ,
                children: const [
                  BasketScreen(),
                 Carts_screen(),
                  ProfileScreen(),
                ],),
            ),
            
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height:bottomNavheight,
                color: LightAppColors.bottomnavColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BtnNavItem(func:()=>btnNavOnpressed(index:BtnNavigationscreen.home ) ,title: "خانه",imageAsset: "assets/svg/home.svg",isActive: selectedIndex== BtnNavigationscreen.home,),
                    BtnNavItem(func:()=>btnNavOnpressed(index:BtnNavigationscreen.basket ) ,title: "سبد خرید",imageAsset: "assets/svg/cart.svg",isActive: selectedIndex== BtnNavigationscreen.basket),
                    BtnNavItem(func:()=>btnNavOnpressed(index:BtnNavigationscreen.profile ) ,title: "پروفایل",imageAsset: "assets/svg/user.svg",isActive: selectedIndex== BtnNavigationscreen.profile ,),                             
                  ],
                ),
                ))
          ],
        ),
      ),
    );
  }

  btnNavOnpressed({required index}){
    setState(() {
      selectedIndex = index;
      });
  }
}


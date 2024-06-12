import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/compounents/app_text_style.dart';

class CartBudget extends StatelessWidget {
  const CartBudget({super.key, this.color = Colors.black, this.count = 0});
  final int count;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 40,
        height: 30,
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/svg/cart.svg",
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            Visibility(
              visible: count > 0 ? true : false,
              child: Positioned(
                left: 15,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      color: const Color.fromARGB(255, 255, 12, 12),
                      shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    count.toString(),
                    style: LightAppTextStyle.bottomNavInActive,
                  )),
                ),
              ),
            )
          ],
        ));
  }
}

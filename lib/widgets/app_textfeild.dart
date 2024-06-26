import 'package:flutter/material.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/dimens.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  final String label;
  final String hint;
  final String timer;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  TextInputType? keyboardType;

  AppTextField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.label,
      this.timer = "",
      this.textAlign = TextAlign.center,
      this.icon = const SizedBox(),
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(Dimens.medium),
      child: SizedBox(
        width: size.width * .75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  timer,
                  style: LightAppTextStyle.title,
                ),
                Text(label, style: LightAppTextStyle.title)
              ],
            ),
            Dimens.medium.height,
            SizedBox(
              width: size.width * .75,
              height: size.height * .07,
              child: TextField(
                textAlign: textAlign,
                controller: controller,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: LightAppTextStyle.hint,
                  prefixIcon: icon,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

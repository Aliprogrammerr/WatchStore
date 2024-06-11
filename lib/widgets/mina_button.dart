import 'package:flutter/material.dart';
import 'package:watchstore/compounents/button_style.dart';

class MainButton extends StatelessWidget {
  MainButton({super.key, required this.text, required this.onpressed});
  final String text;
  void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .75,
      height: size.height *.07,
      child: ElevatedButton(
        style: AppButtonStyle.mianButtonStyle ,
        onPressed: onpressed,
        child: Center(
            child: Text(text,)
      ),
      ),
    );
  }
}

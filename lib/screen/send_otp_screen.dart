import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/resuorce/dimens.dart';
import 'package:watchstore/widgets/app_textfeild.dart';
import 'package:watchstore/widgets/mina_button.dart';

class SendOtpScreen extends StatelessWidget {
  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return  Scaffold(
      body: SafeArea(child:
      SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/png/main_logo.png')),
            60.height,
            AppTextField(controller:controller, hint:AppStrings.hintPhoneNumber, label: AppStrings.enterYourNumber),
            MainButton(text:AppStrings.next,
             onpressed:(){
              
             })
          ],
        ),
      )),
    );
  }
}
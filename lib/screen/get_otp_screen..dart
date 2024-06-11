import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/resuorce/dimens.dart';
import 'package:watchstore/widgets/app_textfeild.dart';
import 'package:watchstore/widgets/mina_button.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

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

            Text(AppStrings.otpCodeSendFor.replaceAll(AppStrings.replace, "hello")),
            Text(AppStrings.wrongNumberEditNumber),
            60.height,
            AppTextField(controller:controller, hint:AppStrings.hintVerificationCode, label: AppStrings.enterVerificationCode,timer: "01:59",),
            MainButton(text:AppStrings.next,
             onpressed:(){
              
             })
          ],
        ),
      )),
    );
  }
}
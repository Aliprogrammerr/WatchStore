import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/route/names.dart';
import 'package:watchstore/screen/auth/auth_cubit.dart';
import 'package:watchstore/widgets/app_textfeild.dart';
import 'package:watchstore/widgets/main_button.dart';

class VeifyCodeScreen extends StatelessWidget {
  VeifyCodeScreen({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mobileRouteArg = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/png/main_logo.png')),
            Text(
              AppStrings.otpCodeSendFor
                  .replaceAll(AppStrings.replace, mobileRouteArg),
              style: LightAppTextStyle.title,
            ),
            const Text(
              AppStrings.wrongNumberEditNumber,
              style: LightAppTextStyle.primaryTheme,
            ),
            60.height,
            AppTextField(
              controller: controller,
              hint: AppStrings.hintVerificationCode,
              label: AppStrings.enterVerificationCode,
              timer: "01:59",
            ),
            BlocConsumer<AuthCubit ,AuthState>(
              listener: (context, state) {
                if (state is VerifiedNotRegistered){
                  Navigator.pushNamed(context, ScreenNames.registerScreen);
                }else if (state is VerifiedIsRegistered) {
                  Navigator.pushNamed(context, ScreenNames.mainScreen);
                }
        
              },
              builder: (context, state) {
               if(state is LoadingState){
                return Center(
                child: CircularProgressIndicator(),);
                }else {
                  return MainButton(text: AppStrings.next, onpressed: (){
                    BlocProvider.of<AuthCubit>(context).verifyCode(mobileRouteArg,controller.text);
                  });
                }
              },
            )
          ],
        ),
      )),
    );
  }
}

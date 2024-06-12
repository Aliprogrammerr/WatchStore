// ignore_for_file: unused_field, file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchstore/compounents/app_text_style.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/app_String.dart';
import 'package:watchstore/route/names.dart';
import 'package:watchstore/screen/auth/auth_cubit.dart';
import 'package:watchstore/widgets/app_textfeild.dart';
import 'package:watchstore/widgets/main_button.dart';

class VeifyCodeScreen extends StatefulWidget {
  const VeifyCodeScreen({super.key});

  @override
  State<VeifyCodeScreen> createState() => _VeifyCodeScreenState();
}
 




class _VeifyCodeScreenState extends State<VeifyCodeScreen> {
 

 @override
  void initState() {
    startTimer();
    super.initState();
  }
 
 
 late Timer _timer ; 
 int start = 120;

 startTimer(){
  const oneSec = Duration(seconds: 1);
  _timer = Timer.periodic(oneSec, (timer) {
    setState(() {
      if(start == 0 ){
        Navigator.of(context).pop();
      }else{
        start --;

      }
    });   
  });
 }
 
   String formatTime(int sec){
    int min =sec ~/ 60;
    int seconds= sec %60;

    String minStr = min.toString().padLeft(2,"");
    String secondsStr = seconds.toString().padLeft(2,"0");

     return "$minStr:$secondsStr";
   }




  final TextEditingController _controller = TextEditingController();

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
            
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: const Text(
                AppStrings.wrongNumberEditNumber,
                style: LightAppTextStyle.primaryTheme,
              ),
            ),
            60.height,
            AppTextField(
              controller: _controller,
              hint: AppStrings.hintVerificationCode,
              label: AppStrings.enterVerificationCode,
              timer:formatTime(start),
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
                return const Center(
                child: CircularProgressIndicator(),);
                }else {
                  return MainButton(text: AppStrings.next, onpressed: (){
                    BlocProvider.of<AuthCubit>(context).verifyCode(mobileRouteArg,_controller.text);
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchstore/compounents/extentions.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/route/names.dart';
import 'package:watchstore/screen/auth/auth_cubit.dart';
import 'package:watchstore/widgets/app_textfeild.dart';
import 'package:watchstore/widgets/main_button.dart';

class SendSmsScreen extends StatelessWidget {
  const SendSmsScreen({super.key});

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
            BlocConsumer(
              listener: (context, state) {
                if (state is SendState){
                  Navigator.pushNamed(context,ScreenNames.verifyCodeScreen,arguments:state.mobile );
                }
                else if(state is ErrorState){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("something is wrong")));
                }
  
              },
              builder:(context ,state){
              if(state is LoadingState){
                 return Center(
                  child:CircularProgressIndicator(),
                 );
                }
                return MainButton(text: AppStrings.next, onpressed: (){
                  BlocProvider.of<AuthCubit>(context).sendSms(controller.text);

                  });
              }
            )
          ],
        ),
      )),
    );
  }
}
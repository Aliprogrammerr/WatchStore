import 'package:flutter/material.dart';
import 'package:watchstore/resuorce/appString.dart';
import 'package:watchstore/route/names.dart';
import 'package:watchstore/widgets/app_textfeild.dart';
import 'package:watchstore/widgets/main_button.dart';
import '../widgets/avatar.dart';
import '../widgets/registerAppbar.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController controllerNamelastName = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: RegisterAppbar(size: size),
      
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                Avatar(),
                AppTextField(controller: controllerNamelastName, hint: AppStrings.hintNameLastName, label: AppStrings.nameLastName ,),
                AppTextField(controller: controllerNamelastName, hint: AppStrings.hintPhoneNumber, label: AppStrings.homeNumber ,),
                AppTextField(controller: controllerNamelastName, hint: AppStrings.hintAddress, label: AppStrings.address ,),
                AppTextField(controller: controllerNamelastName, hint: AppStrings.hintPostalCode, label: AppStrings.postalCode ,),
                AppTextField(controller: controllerNamelastName, hint: AppStrings.hintLocation, label: AppStrings.location,icon: Icon(Icons.location_pin),),
                MainButton(text: AppStrings.next, onpressed: (){
                  Navigator.pushNamed(context,ScreenNames.mainScreen);
                }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

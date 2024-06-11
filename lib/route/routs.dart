

import 'package:flutter/material.dart';
import 'package:watchstore/route/names.dart';
import 'package:watchstore/screen/auth/verify_codeScreen.dart';
import 'package:watchstore/screen/mainScreen/mainScreen.dart';
import 'package:watchstore/screen/register_screen.dart';
import 'package:watchstore/screen/auth/send_sms_screen.dart';



Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.sendSmsScreen: (context) => SendSmsScreen(),
  // ScreenNames.verifyCodeScreen: (context) => VerifyCodeScreen(),
  ScreenNames.registerScreen: (context) => RegisterScreen(),
  ScreenNames.mainScreen: (context) => MainScreen(),
  // ScreenNames.productListScreen: (context) => ProductListScreen(),
  // ScreenNames.productSingleScreen: (context) => const ProductSingleScreen(),
};
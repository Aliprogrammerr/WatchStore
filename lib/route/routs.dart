

import 'package:flutter/material.dart';
import 'package:watchstore/route/names.dart';
import 'package:watchstore/screen/auth/verify_codeScreen.dart';
import 'package:watchstore/screen/mainScreen/mainScreen.dart';
import 'package:watchstore/screen/productListScreeen.dart';
import 'package:watchstore/screen/productSingleScreen.dart';
import 'package:watchstore/screen/register_screen.dart';
import 'package:watchstore/screen/auth/send_sms_screen.dart';



Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.sendSmsScreen: (context) => const SendSmsScreen(),
  ScreenNames.verifyCodeScreen: (context) => const VeifyCodeScreen(),
  ScreenNames.registerScreen: (context) => const RegisterScreen(),
  ScreenNames.mainScreen: (context) => const MainScreen(),
  ScreenNames.productListScreen: (context) => const ProductListScreen(),
  ScreenNames.productSingleScreen: (context) => const ProductSingleScreen(),
};
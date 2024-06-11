import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchstore/compounents/theme.dart';
import 'package:watchstore/route/names.dart';
import 'package:watchstore/route/routs.dart';
import 'package:watchstore/screen/auth/auth_cubit.dart';
import 'package:watchstore/screen/auth/send_sms_screen.dart';
import 'package:watchstore/screen/mainScreen/carts_screen.dart';
import 'package:watchstore/screen/mainScreen/mainScreen.dart';
import 'package:watchstore/screen/mainScreen/profiler.dart';
import 'package:watchstore/screen/productListScreeen.dart';
import 'package:watchstore/screen/productSingleScreen.dart';
import 'package:watchstore/widgets/productItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AuthCubit()  ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme(),
        routes: routes,
        home: BlocBuilder<AuthCubit,AuthState>(builder: (context,state){
          if(state is Login){
            return MainScreen();
          }
          else if(state is LogOut){
            return SendSmsScreen();
          }
          else {
            return SendSmsScreen();
          }
        }),
        // initialRoute:ScreenNames.root,
      ),
    );
  }
} 



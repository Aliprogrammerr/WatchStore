import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchstore/compounents/theme.dart';
import 'package:watchstore/route/routs.dart';
import 'package:watchstore/screen/auth/auth_cubit.dart';
import 'package:watchstore/screen/auth/send_sms_screen.dart';
import 'package:watchstore/screen/mainScreen/mainScreen.dart';
import 'package:watchstore/util/shared_prefernce_manager.dart';

void main()async {
  SharedPrefernceManager().init();
  WidgetsFlutterBinding();
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
        home: BlocBuilder<AuthCubit,AuthState>(builder:(context,state){
          if(state is LogOut){
            return const SendSmsScreen();
          }
          else if(state is Login){
            return const MainScreen();
          }
          else {
            return const SendSmsScreen();
          }
        }),
      ),
    );
  }
} 



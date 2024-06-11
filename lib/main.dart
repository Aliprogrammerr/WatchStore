import 'package:flutter/material.dart';
import 'package:watchstore/compounents/theme.dart';
import 'package:watchstore/screen/get_otp_screen..dart';
import 'package:watchstore/screen/register_screen.dart';
import 'package:watchstore/screen/send_otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: RegisterScreen()
    );
  }
}

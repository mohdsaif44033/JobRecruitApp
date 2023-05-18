import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/screens/ChatList.dart';
import 'package:jobrecruitproject/screens/ChatPage.dart';
import 'package:jobrecruitproject/screens/LoginPage.dart';
import 'package:jobrecruitproject/screens/SignupPage.dart';
import 'package:jobrecruitproject/screens/SplashScreen.dart';

import 'screens/SliderPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Home",
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

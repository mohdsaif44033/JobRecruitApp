// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/controllers/SplashController.dart';


class SplashScreen extends GetView<SplashController> {
  
  SplashScreen({Key? key}) : super(key: key);
  final vc  = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body:
       GestureDetector(
        child: Container(
          padding: EdgeInsets.only(top: Get.height * 0.3),
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
             color: Colors.white),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'lib/assets/splashImage.png',
                    height: 300.0,
                    width: 300.0,
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}

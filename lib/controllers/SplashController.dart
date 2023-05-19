import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:jobrecruitproject/screens/SliderPage.dart';

// ignore: deprecated_member_use
class SplashController extends GetxController
     {
  late AnimationController control;

  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () => Get.to(SliderPage()));
    super.onInit();
  }

  @override
  void onClose() {
    control.dispose();
    super.onClose();
  }
}

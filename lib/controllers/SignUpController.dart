import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: deprecated_member_use
class SignUpController extends GetxController {
  var isRememberMe = false.obs;
 

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

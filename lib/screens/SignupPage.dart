import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/common/CommonWidgets.dart';
import 'package:jobrecruitproject/controllers/SignUpController.dart';
import 'package:jobrecruitproject/screens/LoginPage.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
   SignUpController signUpPageController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:65.0),
                  child: Column(
                    children: [
                      Text(
                        "Create an Account",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consecttutr adisdcinpg\n elit, sed do eiusmod tempor",textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, top: 40, bottom: 8.0, right: 15.0),
                  child: formTextField(
                      100.0, Get.width, "Full name", "Type name Here...",signUpPageController.name)),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, top: 1, bottom: 8.0, right: 15.0),
                  child: formTextField(
                      100.0, Get.width, "Email", "Type Email Here...",signUpPageController.email)),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 1, right: 15.0),
                  child: formTextField(100.0, Get.width, "Password", "Password",signUpPageController.password)),
              Padding(
                padding: const EdgeInsets.only(left: 29.0, right: 31.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                          Obx(() => GestureDetector(
                              onTap: (() => signUpPageController.isRememberMe.value =
                                  !signUpPageController.isRememberMe.value),
                              child: Row(children: [
                                signUpPageController.isRememberMe.value
                                    ? Icon(
                                        Icons.check_box,
                                        color: Colors.lightGreen,
                                      )
                                    : Container(
                                        height: 24,
                                        width: 24,
                                        color:
                                            Color.fromARGB(106, 214, 182, 20)),
                                Text(
                                  "   Remember me",
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                            ))
                      ],
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              CommonButton(Alignment.center, 50.0, 266.0, Colors.lightGreen,
                  "SIGN UP", Colors.white),
              SizedBox(
                height: 14,
              ),
              CommonButton(Alignment.center, 50.0, 266.0, Colors.white,
                  "SIGN UP WITH", Colors.grey),
                  
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("You don't have an account yet?",style: TextStyle(color: Colors.grey),),TextButton(
                                              style: TextButton.styleFrom(
                                                textStyle: const TextStyle(
                                                    fontSize: 16,
                                                
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              onPressed: () {
                                               Get.to(LoginPage());
                                              },
                                              child: const Text('Sign in',style: TextStyle(color: Colors.lightGreen,decoration: TextDecoration.underline),),
                                            )
                  ],)
            ],
          ),
        ),
      ),
    );
  }
}

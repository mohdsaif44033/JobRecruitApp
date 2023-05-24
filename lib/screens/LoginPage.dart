import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/common/CommonWidgets.dart';
import 'package:jobrecruitproject/controllers/LoginController.dart';
import 'package:jobrecruitproject/screens/ChatList.dart';
import 'package:jobrecruitproject/screens/SignupPage.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  LoginController loginController = Get.put(LoginController());
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
                  padding: const EdgeInsets.only(top: 65.0),
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consecttutr adisdcinpg\n elit, sed do eiusmod tempor",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ToggleSwitch(
                        minWidth: 296.0,
                        minHeight: 42.5,
                        cornerRadius: 20.0,
                        borderColor: [Colors.grey],
                        borderWidth: 0.3,
                        activeBgColors: [
                          [Colors.white],
                          [Colors.white]
                        ],
                        activeFgColor: Colors.black,
                        inactiveBgColor: Color.fromARGB(255, 204, 207, 202),
                        inactiveFgColor: Colors.grey,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: [
                          'Candidate',
                          'Recruiter',
                        ],
                        fontSize: 15,
                        radiusStyle: true,
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, top: 36.5, bottom: 8.0, right: 15.0),
                  child: formTextField(100.0, Get.width, "Email",
                      "Type Email Here...", loginController.email)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 1, right: 15.0),
                  child: formTextField(100.0, Get.width, "Password", "Password",
                      loginController.password)),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 11.0, bottom: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Obx(() => GestureDetector(
                              onTap: (() => loginController.isRememberMe.value =
                                  !loginController.isRememberMe.value),
                              child: Row(children: [
                                loginController.isRememberMe.value
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
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
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
              GestureDetector(onTap: (() {
                Get.to(ChatList());
              }),child: CommonButton(Alignment.center, 50.0, 266.0, Colors.lightGreen,
                  "LOGIN", Colors.white),),
              SizedBox(
                height: 14,
              ),
              CommonButton(Alignment.center, 50.0, 266.0, Colors.white,
                  "SIGN IN WITH", Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      Get.to(SignUpPage());
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.lightGreen,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

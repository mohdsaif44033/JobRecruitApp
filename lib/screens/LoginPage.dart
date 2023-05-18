import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/common/CommonWidgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});


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
                        "Welcome Back",
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
                      left: 15.0, top: 1, bottom: 8.0, right: 15.0),
                  child: formTextField(
                      100.0, Get.width, "Email", "Type Email Here...")),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 1, right: 15.0),
                  child: formTextField(100.0, Get.width, "Password", "Password")),
              Padding(
                padding: const EdgeInsets.only(left: 29.0, right: 31.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 24,
                            width: 24,
                            color: Color.fromARGB(106, 214, 182, 20)),
                        SizedBox(
                          width: 17,
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(fontSize: 12),
                        )
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
                  "LOGIN", Colors.white),
              SizedBox(
                height: 14,
              ),
              CommonButton(Alignment.center, 50.0, 266.0, Colors.white,
                  "SIGN IN WITH", Colors.grey),
                  
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Already have an account?",style: TextStyle(color: Colors.grey),),TextButton(
                                              style: TextButton.styleFrom(
                                                textStyle: const TextStyle(
                                                    fontSize: 16,
                                                
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              onPressed: () {
                                               
                                              },
                                              child: const Text('Sign up',style: TextStyle(color: Colors.lightGreen,decoration: TextDecoration.underline),),
                                            )
                  ],)
            ],
          ),
        ),
      ),
    );
  }
}

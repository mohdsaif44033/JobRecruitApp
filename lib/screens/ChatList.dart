import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/common/CommonWidgets.dart';
import 'package:jobrecruitproject/controllers/ChatListController.dart';
import 'package:jobrecruitproject/screens/SliderPage.dart';

class ChatList extends StatelessWidget {
  ChatList({super.key});

  ChatListController chatlistcontroller = Get.put(ChatListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 15.0,),
            child: CircleAvatar(
                backgroundImage: AssetImage("lib/assets/profile.png"),
                radius: 20),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Colors.lightGreen,
      ),
      drawer: commonDrawer(),
      bottomNavigationBar: bottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(top:12.0,),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 50,alignment: Alignment.center,margin: EdgeInsets.only(left: 7,right: 10),color: Colors.white,
                child: TextField(
                  
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 73, 69, 69),
                      ),
                      hintText: "Search message..."),
                ),
              ),
              SizedBox(height: 22,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int chatIndex) {
                  return chatCard(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
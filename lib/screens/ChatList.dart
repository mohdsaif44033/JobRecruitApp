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
            padding: const EdgeInsets.only(right: 15.0, top: 15.0),
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
        padding: const EdgeInsets.only(top:22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 73, 69, 69),
                    ),
                    hintText: "Search message..."),
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

// Widget bottomNavBar() {
//    ChatListController chatlistcontroller = Get.put(ChatListController());

//   return BottomNavigationBar(

//       selectedItemColor: Colors.white,
//       backgroundColor:chatlistcontroller.bottomNavBarSelectedItem == 0 ? Colors.white:Colors.lightGreen,
//       unselectedItemColor: Colors.black,
//       unselectedLabelStyle: TextStyle(color: Colors.black),
//       iconSize: 32.0,
//       selectedFontSize: 8.0,
//       unselectedFontSize: 8.0,
//       showUnselectedLabels: true,
//       unselectedIconTheme: IconThemeData(color: Colors.lightGreen),
//       selectedIconTheme: IconThemeData(color: Colors.white),
//       currentIndex: 1,
//       onTap: (value) {
//              chatlistcontroller.bottomNavBarSelectedItem.value = value;

//         //       if (chatlistcontroller.bottomNavBarSelectedItem == 0) {
//         //         Get.to(SliderPage());
//         //       } else if (chatlistcontroller.bottomNavBarSelectedItem == 1) {
//         // Get.to(SliderPage());
//         //       } else if (chatlistcontroller.bottomNavBarSelectedItem == 2) {
//         //        Get.to(SliderPage());
//         //       }
//       },
//       items: [
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.business_center,
//             ),
//             label: "Active Jobs"),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.chat,
//             ),
//             label: "Chat"),
//         const BottomNavigationBarItem(
//             icon: Icon(
//               Icons.supervisor_account_sharp,
//             ),
//             label: "Connections"),
//       ]);
// }


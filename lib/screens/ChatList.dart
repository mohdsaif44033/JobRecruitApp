import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            padding: const EdgeInsets.only(right: 8.0, top: 10),
            child: CircleAvatar(
                backgroundImage: AssetImage("lib/assets/profile.png"),
                radius: 25),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Colors.lightGreen,
      ),
      drawer: Drawer(
        width: 311,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("lib/assets/profile.png"),
              radius: 52.0,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "Sachin Chh",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 4),
            Text("sachin@test.com",
                style: TextStyle(color: Colors.grey, fontSize: 12)),
            TextButton(
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              onPressed: () {},
              child: Text(
                'Edit Profile',
                style: TextStyle(
                    color: Colors.lightGreen, fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int chatIndex) {
                return drawerCard(
                    context, "lib/assets/icon.png", "My Job Application");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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

Widget chatCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 6.0),
    child: GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 90,
        width: 40,
        child: Card(
            elevation: 0.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/profile.png"),
                    radius: 28,
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: Get.width * 0.75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sebastian Rudiger",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Perfect will check it",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 101, 101)),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("5m ago", style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 9),
                          Icon(
                            Icons.circle,
                            color: Colors.lightGreen,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}

Widget bottomNavBar() {
  return Container(
   
    height: 60,
    color: Color.fromARGB(255, 175, 250, 177),
    child: Row(
      children: [
        GestureDetector( 
          child: Container(
            width: Get.width / 3,
            color: Colors.white,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.business_center,color: Colors.lightGreen,size: 32),
                Text(
                  'Active Jobs',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ),
                GestureDetector(
                  child: Container(
                          width: Get.width / 3,
                          color: Colors.white,
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.chat,color: Colors.lightGreen,size: 32),
                              Text(
                  'Chat',
                  style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                ),        GestureDetector(
                  child: Container(
                          width: Get.width / 3,
                          color: Colors.white,
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.supervisor_account_sharp,color: Colors.lightGreen,size: 32),
                              Text(
                  'Connections',
                  style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                )
      ],
    ),
  );
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

Widget drawerCard(BuildContext context, icon, text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 18.0, bottom: 25.0),
        child: Image.asset(icon, scale: 1),
      ),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}

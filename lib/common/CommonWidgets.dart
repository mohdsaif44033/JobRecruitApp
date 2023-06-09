import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:jobrecruitproject/screens/ActiveJobsPage.dart';
import 'package:jobrecruitproject/screens/ChatList.dart';
import 'package:jobrecruitproject/screens/ChatPage.dart';
import 'package:jobrecruitproject/screens/ConnectionsPage.dart';


// Common Text Field
formTextField(height, width, text, hintText,textEditingController) {
  var showPass = false.obs;
  return Container(
    height: height,
    width: width,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child:Obx(()=> TextField(
          controller: textEditingController,
          obscureText:showPass.value? false : hintText == 'Password'? true :false,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(151, 167, 238, 25), width: 2.0),
                  borderRadius: BorderRadius.circular(12)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.circular(12)),
              hintText: hintText,
              suffixIcon: hintText == "Password"
                  ? Obx
                  (() => 
                     GestureDetector(
                        onTap: () {showPass.value = !showPass.value;},
                        child: Icon( showPass.value?
                          Icons.visibility_outlined: Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                      ),
                  )
                  : SizedBox(
                      height: 1,
                    )),
        ),)
      ),
    ]),
  );
}

// Common Button
CommonButton(alignment, height, width, color, text, textColor) {
  return Container(
    alignment: alignment,
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(width: 1.0, color: Colors.lightGreen),
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(7)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text,
            style: TextStyle(
                color: textColor, fontSize: 14, fontWeight: FontWeight.w700)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: text == "SIGN UP WITH" || text == "SIGN IN WITH"
              ? Image.asset("lib/assets/image3.png")
              : SizedBox(
                  width: 1,
                ),
        )
      ],
    ),
  );
}

// Bottom Navigation Bar
Widget bottomNavBar() {
  var isSelectedActiveJobs = false.obs;
  var isSelectedChat = false.obs;
  var isSelectedConnections = false.obs;
  return Container(
    height: 60,
    color: Color.fromARGB(255, 175, 250, 177),
    child: Obx(() => 
       Row(
        children: [
          GestureDetector( onTap: () {
            Get.to(ActiveJobs());
            isSelectedActiveJobs.value = true;
            isSelectedChat.value = false;
            isSelectedConnections.value = false;
          },
            child: Container(
              width: Get.width / 3,
              color: isSelectedActiveJobs.value? Colors.lightGreen: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.business_center, color: isSelectedActiveJobs.value? Colors.white: Colors.lightGreen, size: 32),
                  Text(
                    'Active Jobs',
                    style: TextStyle(fontSize: 10,color: isSelectedActiveJobs.value? Colors.white : Colors.black),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(onTap: () {
            Get.to(ChatList());
            isSelectedActiveJobs.value = false;
            isSelectedChat.value = true;
            isSelectedConnections.value = false;
          },
            child: Container(
              width: Get.width / 3,
              color:isSelectedChat.value? Colors.lightGreen: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat, color:isSelectedChat.value? Colors.white: Colors.lightGreen, size: 32),
                  Text(
                    'Chat',
                    style: TextStyle(fontSize: 10,color: isSelectedChat.value? Colors.white : Colors.black),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(onTap: () {
            Get.to(ConnectionsPage());
            isSelectedActiveJobs.value = false;
            isSelectedChat.value = false;
            isSelectedConnections.value = true;
          },
            child: Container(
              width: Get.width / 3,
              color: isSelectedConnections.value? Colors.lightGreen: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.supervisor_account_sharp,
                      color:isSelectedConnections.value? Colors.white: Colors.lightGreen, size: 32),
                  Text(
                    'Connections',
                    style: TextStyle(fontSize: 10,color: isSelectedConnections.value? Colors.white : Colors.black),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

//Chat Card
Widget chatCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Get.to(ChatPage());
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: 70,
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
                         Container(alignment: Alignment.center,height: 20,width: 20,decoration: BoxDecoration(color: Colors.lightGreen,borderRadius: BorderRadius.circular(10)),child: Text("1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)
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

//Common Drawer Card
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

// Common Connection Card
Widget connectionCard(BuildContext context, image, name, designation) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 19),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            right: 15,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 25,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(height: 3),
            Text(
              designation,
              style: TextStyle(
                  color: Color.fromARGB(255, 103, 101, 101), fontSize: 13),
            )
          ],
        )
      ],
    ),
  );
}

Widget commonDrawer() {
  return Drawer(
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
  );
}



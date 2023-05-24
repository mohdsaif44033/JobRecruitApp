import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/controllers/ChatPageController.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  ChatPageController chatpagecontroller = Get.put(ChatPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: (() {
                chatpagecontroller.isSeletedDelete.value = false;
                chatpagecontroller.isSeletedBlockUser.value = false;
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                     
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    builder: (context) {
                      return SizedBox(
                        height: 200,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 40,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              )),
                              SizedBox(
                                height: 20,
                              ),
                              Obx((() => GestureDetector(
                                    onTap: () {
                                      chatpagecontroller.isSeletedDelete.value =
                                          true;
                                      chatpagecontroller
                                          .isSeletedBlockUser.value = false;
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 342,
                                      decoration: BoxDecoration(
                                          color: chatpagecontroller
                                                  .isSeletedDelete.value
                                              ? Colors.lightGreen
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, right: 17),
                                            child: Image.asset(
                                                "lib/assets/deleteIcon.png"),
                                          ),
                                          Text(
                                            'Delete Chat',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: chatpagecontroller
                                                        .isSeletedDelete.value
                                                    ? Colors.white
                                                    : Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ))),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  chatpagecontroller.isSeletedDelete.value =
                                      false;
                                  chatpagecontroller.isSeletedBlockUser.value =
                                      true;
                                  Navigator.pop(context);
                                  showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.0),
                                        ),
                                      ),
                                      builder: (context) {
                                        return SizedBox(
                                          height: 358,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Center(
                                                    child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: 40,
                                                    height: 6,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.lightGreen,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                  ),
                                                )),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "Block User ?",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                Container(
                                                  height: 96,
                                                  width: 300,
                                                  child: Text(
                                                    "Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 31,
                                                ),
                                                Obx(() => GestureDetector(
                                                      onTap: () {
                                                        chatpagecontroller
                                                            .isSeletedNo
                                                            .value = true;
                                                        chatpagecontroller
                                                            .isSeletedYes
                                                            .value = false;
                                                      },
                                                      child: Container(
                                                          height: 50,
                                                          width: 317,
                                                          decoration: BoxDecoration(
                                                              color: chatpagecontroller
                                                                      .isSeletedNo
                                                                      .value
                                                                  ? Colors
                                                                      .lightGreen
                                                                  : Colors
                                                                      .white,
                                                              border: Border.all(
                                                                  width: 1.0,
                                                                  color: Colors
                                                                      .lightGreen),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Center(
                                                            child: Text(
                                                              'NO',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: chatpagecontroller
                                                                          .isSeletedNo
                                                                          .value
                                                                      ? Colors
                                                                          .white
                                                                      : Colors
                                                                          .black),
                                                            ),
                                                          )),
                                                    )),
                                                SizedBox(height: 10),
                                                Obx(() => GestureDetector(
                                                      onTap: () {
                                                        chatpagecontroller
                                                            .isSeletedNo
                                                            .value = false;
                                                        chatpagecontroller
                                                            .isSeletedYes
                                                            .value = true;
                                                      },
                                                      child: Container(
                                                          height: 50,
                                                          width: 317,
                                                          decoration: BoxDecoration(
                                                              color: chatpagecontroller
                                                                      .isSeletedYes
                                                                      .value
                                                                  ? Colors
                                                                      .lightGreen
                                                                  : Colors
                                                                      .white,
                                                              border: Border.all(
                                                                  width: 1.0,
                                                                  color: Colors
                                                                      .lightGreen),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Center(
                                                            child: Text(
                                                              'YES, BLOCK USER',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: chatpagecontroller
                                                                          .isSeletedYes
                                                                          .value
                                                                      ? Colors
                                                                          .white
                                                                      : Colors
                                                                          .black),
                                                            ),
                                                          )),
                                                    ))
                                              ]),
                                        );
                                      });
                                },
                                child: Obx(
                                  (() => Container(
                                        height: 50,
                                        width: 342,
                                        decoration: BoxDecoration(
                                            color: chatpagecontroller
                                                    .isSeletedBlockUser.value
                                                ? Colors.lightGreen
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0, right: 17),
                                              child: Image.asset(
                                                  "lib/assets/blockIcon.png"),
                                            ),
                                            Text(
                                              'Block User',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: chatpagecontroller
                                                          .isSeletedBlockUser
                                                          .value
                                                      ? Colors.white
                                                      : Colors.black),
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              )
                            ]),
                      );
                    });
              }),
              child: Icon(
                Icons.more_vert_outlined,
                color: Colors.grey,
                size: 34,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(231, 244, 250, 254),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0)),
                  color: Colors.white,
                ),
                height: 60,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 20),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("lib/assets/profile.png"),
                                radius: 25,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Rahul Vaidhya',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 10,
                                        color: Colors.green,
                                      ),
                                      Text('  Online',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            color: Colors.white,
                            child: IconButton(
                              iconSize: 30,
                              icon: Icon(
                                Icons.search,
                                color: Colors.lightGreen,
                                size: 30,
                              ),
                              onPressed: () {},
                            )),
                      ],
                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      chatBox(context, 'Hi, Jimmy! Any update today?', false),
                      chatBox(context, "All good! we have some update", true)
                    ],
                  );
                },
              ),
            ],
          ),
          Container(
             padding: EdgeInsets.only(left: 15),
                color: Colors.transparent,
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
 Icon(
                                Icons.attach_file,
                                color: Colors.lightGreen,
                                size: 30,
                              ),
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [BoxShadow(
        color: Colors.grey,
        blurRadius: 0.1, 
        spreadRadius: 0.1, //extend the shadow
        offset: Offset(
          0.01, // Move to right 5  horizontally
          0.01, // Move to bottom 5 Vertically
        ),
      )],
                        color: Colors.white
                      ),
                      height: 60,
                      width: Get.width * 0.6,
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                        
                              border: InputBorder.none,
                              hintText: "Write your message",
                              fillColor: Colors.white
                              ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 4, right: 5),
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1.0, color: Colors.lightGreen),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.white,
                        ),
                        height: 60,
                        width: 60,
                        child: IconButton(
                          icon: Icon(
                            Icons.mic,
                            color: Colors.lightGreen,
                            size: 35,
                          ),
                          onPressed: () {},
                        )),
                  )
                ],
              ))
        ],
      )),
    );
  }
}

Widget chatBox(BuildContext context, text, isSender) {
  return Align(
    alignment: isSender ? Alignment.topRight : Alignment.topLeft,
    child: Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        !isSender
            ? Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/profile.png"),
                  radius: 19,
                ),
              )
            : Container(),
        Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 19, top: 25, left: 0),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(15.0),
                    topLeft: const Radius.circular(15.0),
                    bottomLeft: Radius.circular(isSender ? 15.0 : .0),
                    bottomRight: Radius.circular(isSender ? 0 : 15.0)),
                color: isSender ? Colors.lightGreen : Colors.white,
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: isSender ? Colors.white : Colors.black,
                  fontFamily: 'Roboto_Black',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: isSender ? 0 : 20, top: 10, right: isSender ? 25 : 0),
              child: Text(
                '09:34 PM',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Roboto_Black',
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// colorSchemeSeed: const Color(0xff6750a4),

  
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.grey,
              size: 34,
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
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: Colors.lightGreen,
                                    ),
                                    Text('  Online',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0)),
                color: Colors.white,
              ),
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 1),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(231, 244, 250, 254),
                      ),
                      height: 60,
                      width: Get.width * 0.7,
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.attach_file,color: Colors.lightGreen,),
                              border: InputBorder.none,
                              hintText: "Write your message"),
                        ),
                      )),
                
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(
                    
                        padding: EdgeInsets.only(left: 4,right: 5),
                        decoration:  BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.lightGreen),
                          borderRadius: BorderRadius.all(
                      Radius.circular(12)  ),
                          color: Colors.white,
                        ),
                        height: 60,
                        width: 60,
                        child: IconButton(
                          iconSize: 35,
                          icon:  Icon(
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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 25, left: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: const Radius.circular(15.0),
                topLeft: const Radius.circular(15.0),
                bottomLeft: Radius.circular(isSender ? 15.0 : .0),
                bottomRight: Radius.circular(isSender ? 0 : 15.0)),
            color: isSender
                ? const Color.fromARGB(255, 103, 42, 234)
                : Colors.white,
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
        const Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10),
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
  );
}

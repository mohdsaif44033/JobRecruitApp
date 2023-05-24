import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/common/CommonWidgets.dart';

class ConnectionsPage extends StatelessWidget {
  const ConnectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(onTap: () {
          Get.back();
        },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "My Connections",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(top:35.0),
        child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int connectionIndex) {
                    return connectionCard(context,  "lib/assets/profile.png", "Naveen Suri", "Recruiter");
                  },
                ),
      ),
    );
  }
}

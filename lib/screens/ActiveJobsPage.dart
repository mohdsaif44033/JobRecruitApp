import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/common/CommonWidgets.dart';



class ActiveJobs extends StatelessWidget {
  ActiveJobs({super.key});


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
      body: Column(children: [],)
    );
  }
}

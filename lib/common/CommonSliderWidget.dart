import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

commonSliderWidget(title, subtitle, imagePath) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
          height: 307,
          width: 338,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subtitle,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      )
    ],
  );
}

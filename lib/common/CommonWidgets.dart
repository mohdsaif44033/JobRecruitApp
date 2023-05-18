import 'package:get/get.dart';
import 'package:flutter/material.dart';

formTextField(height, width, text, hintText) {
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
        child: TextField(
          obscureText: hintText == "Password" ? true : false,
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
                  ? Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    )
                  : SizedBox(
                      height: 1,
                    )),
        ),
      ),
    ]),
  );
}

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
    child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text,
            style: TextStyle(
                color: textColor, fontSize: 14, fontWeight: FontWeight.w700)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: text == "SIGN UP WITH" || text == "SIGN IN WITH" ? Image.asset("lib/assets/image3.png") : SizedBox(width: 1,),
                )
      ],
    ),
  );
}

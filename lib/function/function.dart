import 'package:flutter/material.dart';

statusBar(){
  return PreferredSize(
    preferredSize: Size.fromHeight(0),
    child: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff609b83), Color.fromARGB(255, 36, 68, 61)],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
    ),
  );
}

statusBarColor({Color? color}){
  return PreferredSize(
    preferredSize: Size.fromHeight(0),
    child: Container(
      color: color,
    ),
  );
}

paddingLeft(double width){
  return SizedBox(width:width);
}

paddingTop(double height){
  return SizedBox(height:height);
}

primaryColor(){
  return Color(0xff63a28a);
}

secondaryColor(){
  return Color(0xffdee23d);
}
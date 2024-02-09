import 'package:flutter/material.dart';
Widget ourButton({onPress,color,textColor , String?title}){
  return Material(
    color: color,
    borderRadius: BorderRadius.circular(10),
    child: InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(title!,style: TextStyle(fontSize: 17,letterSpacing: 1,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),
      ),
    ),
  );
}

import 'package:e_mart/Const/consts.dart';
import 'package:flutter/material.dart';
Widget ourButton({onPress,color,textColor , String?title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary:color,
      padding: const EdgeInsets.all(8),
    ),
      onPressed: onPress,
      child: title?.text.color(textColor).fontFamily(bold).make());
}

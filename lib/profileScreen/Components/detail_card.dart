
import 'package:e_mart/Const/consts.dart';
import 'package:flutter/material.dart';

Widget detailscard({width ,String?count,tittle}){
  return
  Column(
  mainAxisAlignment: MainAxisAlignment.center,

  children: [
  "00".text.fontFamily(bold).color(darkFontGrey).make(),
  5.heightBox,
  "in your cart".text.color(darkFontGrey).make()
  ],
  ).box.rounded.white.width(width).height(60).padding(EdgeInsets.all(4)).make();
}
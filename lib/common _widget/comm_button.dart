import 'package:e_mart/Const/consts.dart';
import 'package:flutter/cupertino.dart';

Widget homebuttons ({width,height,icon,String?title,onPresse}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.shadowSm.size(width, height).white.make();
}
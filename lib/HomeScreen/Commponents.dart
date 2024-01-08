import 'package:e_mart/Const/consts.dart';
import 'package:flutter/cupertino.dart';

Widget featuredButton({String?tittle,images}){
  return Row(
    children: [
      Image.asset(images,width: 60,fit: BoxFit.fill),
      10.widthBox,
      tittle!.text.color(darkFontGrey).fontFamily(semibold).make()
    ],
  ).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.white.padding(const EdgeInsets.all(4)).outerShadowSm.make();
}
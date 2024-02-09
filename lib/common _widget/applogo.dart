import 'package:e_mart/Const/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget applogowidget(){
  return Image.asset(icAppLogo,color: Colors.blue,).box.white.size(77, 77).padding(const EdgeInsets.all(8)).rounded.make();
}
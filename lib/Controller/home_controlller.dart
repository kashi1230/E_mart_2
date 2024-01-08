

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var currentNavIndex = 0.obs;
  RxBool tap = true.obs;

  TextEditingController searchcontroller = TextEditingController();
  void clearval(){
    searchcontroller.clear();
    tap = false.obs;
  }

}
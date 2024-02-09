

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future showMessage({String? title,String? content}){
  return  showDialog(
      context: Get.context!,
      builder: (context) {
        return SimpleDialog(
            backgroundColor: Colors.blueAccent,
            alignment: Alignment.bottomLeft,
            titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.7,),
            title: Text(title!,textAlign: TextAlign.center),
            contentPadding: EdgeInsets.all(20),
            children: [
              Text(content!,textAlign: TextAlign.center,style: GoogleFonts.lato(letterSpacing: 1,fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15,),)
            ],
        );
      });
}
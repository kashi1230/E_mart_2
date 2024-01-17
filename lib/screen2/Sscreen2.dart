import 'package:e_mart/Auth_screen/login_screen.dart';
import 'package:e_mart/common%20_widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Const/images.dart';


class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(top: 70,left: 0),
            child: Stack(
              children:[
                Image.asset(icSplashBg),
                Center(
                  child: Column(
                    children: [
                     Image.asset("assets/images/logo-no-background.png",width: 500,height: 200,color: Colors.white,),
                     100.heightBox,
                     ourButton(
                       textColor: Colors.black,
                       title: "B1",
                       onPress: (){}
                     ).box.width(180).height(50).make(),
                      15.heightBox,
                      ourButton(
                          textColor: Colors.black,
                          title: "B1",
                          onPress: (){}
                      ).box.width(180).height(50).make(),
                      15.heightBox,
                      ourButton(
                          textColor: Colors.black,
                          title: "B1",
                          onPress: (){}
                      ).box.width(180).height(50).make(),
                      15.heightBox,
                      ourButton(
                          textColor: Colors.black,
                          title: "CUSTOMER >>",
                          onPress: (){
                            Get.to(const LoginScreen(),transition: Transition.rightToLeft);
                          }
                      ).box.width(180).height(50).make(),
                    ],
                  ),),
           ]
            ),
        ),
      ),
    );
  }
}
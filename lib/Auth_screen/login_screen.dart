import 'package:e_mart/Auth_screen/signup.dart';
import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/Const/list.dart';
import 'package:e_mart/HomeScreen/home.dart';
import 'package:e_mart/common%20_widget/applogo.dart';
import 'package:e_mart/common%20_widget/button.dart';
import 'package:e_mart/common%20_widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../api/auth.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  authApi loginApi = Get.put(authApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
         extendBody: true,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                (context.screenHeight *0.1).heightBox,
                applogowidget(),
                 10.heightBox,
                "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,
                Column(
                  children: [
                   customTextField(hint: "name",title: "Name",controller:loginApi.loginnameController),
                    customTextField(hint: passhint,title: password,controller: loginApi.loginpassController),
                    Align(
                      alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){}, child: forgetpass.text.make()),),
                    5.heightBox,
                    // button
                    ourButton(
                        color: redColor,title: login,textColor: whiteColor,onPress: (){
                          loginApi.login();
                    }
                    ).box.width(context.screenWidth -50).make(),

                    //new account

                    5.heightBox,
                    createnewaccount.text.color(fontGrey).make(),
                    5.heightBox,

                    //sighn up

                    ourButton(
                        color:Lightgolden,title: signup,textColor: redColor,onPress: (){
                          Get.to(()=>SighnupScreen());
                    }
                    ).box.width(context.screenWidth -50).make(),
                    5.heightBox,
                    //Login with
                    loginwith.text.color(fontGrey).make(),
                    5.heightBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: lightGrey,
                                  radius: 25,
                        child: Image.asset(
                            socialIconlist[index],
                          width: 30,
                        )
                      ),
                              )),
                    )
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
              ],
            ),
          ),
        ),
    );
  }
}

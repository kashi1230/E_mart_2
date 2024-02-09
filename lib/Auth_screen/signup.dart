import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/api/auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common _widget/applogo.dart';
import '../common _widget/button.dart';
import '../common _widget/custom_textfield.dart';

class SighnupScreen extends StatelessWidget {
   SighnupScreen({super.key});

 authApi signupapi = Get.put(authApi());

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      extendBody: true,
      backgroundColor: redColor,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: [
                (context.screenHeight *0.07).heightBox,
                applogowidget(),
                10.heightBox,
                "join the  $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: "Name",title: "Name",controller: signupapi.nameController),
                    customTextField(hint: "Phone No...",title: "Phone No.",controller: signupapi.phoneController),
                    customTextField(hint: "Alternate No...",title: "Alternat No.",controller: signupapi.altphnController),
                    customTextField(hint:"Address...",title: "Address",controller: signupapi.addressController),
                    customTextField(hint: "City...",title: "City",controller: signupapi.cityController),
                    customTextField(hint: "State...",title: "State",controller: signupapi.stateController),
                    customTextField(hint: passhint,title: "Password",controller: signupapi.passwordcontroller),
                    5.heightBox,
                    Row(
                      children: [
                       Obx(() =>  Checkbox(
                           activeColor: redColor,
                           checkColor: whiteColor,
                           value: signupapi.ischeck.value,
                           onChanged: (newvalue) {
                             signupapi.ischeck.value = newvalue!;
                           }),),
                        10.widthBox,
                        Expanded(
                          child: RichText(text: const TextSpan(
                            children: [
                              TextSpan(text: "I agree to the",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                )
                              ),
                              TextSpan(text:termcond,
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: redColor,
                                  ),
                              ),
                              TextSpan(text:"&",
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: fontGrey,
                                  ),),
                              TextSpan(text:policy,
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: redColor,
                                  ),
                              )
                            ]
                          )),
                        )
                      ],
                    ),
                    5.heightBox,
                    Obx(() => ourButton(
                        color:signupapi.ischeck.value==true?redColor:lightGrey,
                        title: signup,textColor: whiteColor,
                        onPress: (){
                          FocusScope.of(context).unfocus();
                          signupapi.Signup();
                        }
                    ).box.width(context.screenWidth -50).make(),),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        alradyhaveaccount.text.color(fontGrey).make(),
                        login.text.color(redColor).make().onTap(() {
                          Get.back();
                        })
                      ],
                    )
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
              ],
            )
        ),
      ),
    );
  }
}


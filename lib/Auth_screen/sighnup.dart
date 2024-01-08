import 'package:e_mart/Const/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common _widget/applogo.dart';
import '../common _widget/bg_widget.dart';
import '../common _widget/button.dart';
import '../common _widget/custom_textfield.dart';

class SighnupScreen extends StatefulWidget {
  const SighnupScreen({super.key});

  @override
  State<SighnupScreen> createState() => _SighnupScreenState();
}

class _SighnupScreenState extends State<SighnupScreen> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(child:
    Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Center(
            child: Column(
              children: [
                (context.screenHeight *0.1).heightBox,
                applogowidget(),
                10.heightBox,
                "join the  $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,

                Column(
                  children: [
                    customTextField(hint: namehint,title: name),
                    customTextField(hint: hintemail,title: email),
                    customTextField(hint: passhint,title: password),
                    customTextField(hint: retypepasshint,title: retypepass),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){}, child: forgetpass.text.make()),),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: redColor,
                          checkColor: whiteColor,
                            value: ischeck, onChanged: (newvalue) {
                            setState(() {
                              ischeck = newvalue;
                            });
                        }),
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
                    ourButton(
                        color:ischeck==true?redColor:lightGrey,title: signup,textColor: whiteColor,onPress: (){}
                    ).box.width(context.screenWidth -50).make(),
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
            ),
          )
      ),
    ));
  }
}



import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/screen2/Sscreen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common _widget/applogo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a methodto change a Screen

  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
    Get.offAll(const Screen2(),transition:Transition.rightToLeft);
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg)),
            20.heightBox,
            applogowidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
            //Splash Screen ui is competeed ------
          ],
        ),
      ),
    );
  }
}
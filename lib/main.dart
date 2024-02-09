import 'package:e_mart/Auth_screen/login_screen.dart';
import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/HomeScreen/Home_screen.dart';
import 'package:e_mart/Splash_screen/splash_screen.dart';
import 'package:e_mart/screen2/Sscreen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent),
        fontFamily: regular
      ),
      home: const SplashScreen()
    );
  }
}
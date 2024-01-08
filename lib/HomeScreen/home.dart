
import 'package:e_mart/CategoryScreen/category_screen.dart';
import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/Controller/home_controlller.dart';
import 'package:e_mart/HomeScreen/Home_screen.dart';
import 'package:e_mart/cartScreen/Cart_Screen.dart';
import 'package:e_mart/profileScreen/Profile_Sceen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //init home controller

    var controller= Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26),label:home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26),label:categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26),label:cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26),label:accountr)
    ];
    var navBody =[
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items:navbarItem,
           onTap: (value){
             controller.currentNavIndex.value= value;
           },
         ),
      ),

    );
  }
}

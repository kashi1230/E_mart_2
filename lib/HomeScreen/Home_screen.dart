import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/Const/list.dart';
import 'package:e_mart/HomeScreen/detailHomeScreen.dart';
import 'package:e_mart/common%20_widget/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade500,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              cursorColor: Colors.black,
              decoration:InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(icon: const Icon(Icons.my_location_outlined), onPressed: () {},),
                hintText: "Search here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white,

              ) ,
            ),
          ),
        ),
      ),
        body: bgWidget(
          child: Container(
            padding: const EdgeInsets.all(12),
            color: lightGrey,
            width: context.screenWidth,
            height: context.screenHeight,
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0,bottom: 0),
                    child: Container(
                      decoration: const BoxDecoration(
                      ),
                    )
                  ),
                  // 20.heightBox,
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          //Swiper  brands
                          VxSwiper.builder(
                              aspectRatio: 16/15,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              itemCount: slidersList.length, itemBuilder: (context, index){
                            return
                              Image.asset(slidersList[index],fit: BoxFit.fill,)
                                  .box.rounded.color(Colors.grey.shade300).clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();

                          }),
                          10.heightBox,
                          Column(
                            children: [
                              Align(alignment: Alignment.topLeft,child: "Today deal".text.fontFamily(bold).color(darkFontGrey).size(20).make(),),
                              10.heightBox,
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 20,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 4,mainAxisExtent: 200),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Hero(
                                          tag: slidersList,
                                          child: Image.asset(slidersList[index],width: 120,height: 120,fit: BoxFit.cover,)),
                                      const Spacer(),
                                      "Cabbage".text.fontFamily(bold).color(darkFontGrey).make(),
                                      5.heightBox,
                                      "Rs 100/kg".text.color(redColor).fontFamily(bold).size(16).make()
                                    ],
                                  ).box.white.roundedSM.padding(const EdgeInsets.all(12)).margin(const EdgeInsets.symmetric(horizontal: 4)).make().onTap(() {Get.to(const DetailHomeScreen());});
                                },),
                            ],
                          )
          
                        ],
                      ),
                    )
                  )
              ]
                  )
            ),
          ),
        ),
    );
  }
}

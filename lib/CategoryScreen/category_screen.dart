import 'package:e_mart/CategoryScreen/categoryDetails.dart';
import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/Const/list.dart';
import 'package:e_mart/common%20_widget/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 200),
              itemBuilder: (context, index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                        children:[ Image.asset(catgorieImages[index],height: 200,width: 200,fit:BoxFit.fitHeight),
                          Align(
                            alignment: Alignment.center,
                              child: catgoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make())
                        ]),
                    // 10.heightBox,
                    // catgoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
                  ],
                ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
                  Get.to(()=>CategoryDetails(title: catgoriesList[index]));
                });
              }),
        ),
    );
  }
}

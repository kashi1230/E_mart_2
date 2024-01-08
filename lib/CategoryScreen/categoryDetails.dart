import 'package:e_mart/CategoryScreen/ItemDetails.dart';
import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/common%20_widget/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/Const/consts.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class CategoryDetails extends StatelessWidget {

  final String?title;
  const CategoryDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {

    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
             children: [
               SingleChildScrollView(
                 physics:BouncingScrollPhysics() ,
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: List.generate(6, (index) =>
                       "Baby Clothing".text.
                       fontFamily(semibold).
                       color(darkFontGrey).
                       size(12).
                       makeCentered().
                       box.
                       rounded.
                       white.
                       size(120, 60).
                       margin(EdgeInsets.symmetric(horizontal: 4))
                           .make())
                 ),
               ),
          20.heightBox,
               //items Container

               Expanded(child: GridView.builder(
                 physics: BouncingScrollPhysics(),
                 shrinkWrap: true,
                   itemCount: 6,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                     (crossAxisCount: 2,mainAxisExtent: 250,mainAxisSpacing: 8,
                       crossAxisSpacing: 8),
                   itemBuilder:(context,index){
                     return Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:[
                         Image.asset(width: 200,height: 150,imgP5,fit: BoxFit.cover,),
                         "Laptop 4GB/64".text.fontFamily(semibold).color(darkFontGrey).make(),
                         10.heightBox,
                         "Rs 60000".text.color(redColor).fontFamily(bold).size(16).make()
                       ],
                     ).box.
                     white.
                     roundedSM.
                     padding(EdgeInsets.all(12)).
                     outerShadowSm.
                     margin(EdgeInsets.symmetric(horizontal: 4)).
                     make().onTap(() {
                       Get.to(()=>itemDetails(title: "Dummy Item"));
                     });
                   }))
             ],
          ),

        ),
      )
    );
  }
}

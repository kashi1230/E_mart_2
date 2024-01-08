import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/Const/list.dart';
import 'package:flutter/material.dart';

class DetailHomeScreen extends StatelessWidget {
  const DetailHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: "items".text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
          ],
        ),
        body: Column(
          children: [
            Expanded(child: Container(padding: const EdgeInsets.all(8),
              child:  SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Swiper section
                    VxSwiper.builder(
                        autoPlay: true,
                        height: 350,
                        aspectRatio: 16/9,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                              imgg1, width: double.infinity, fit: BoxFit.cover);
                        }),
                    10.heightBox,

                    //tittle and details section

                    "Item 1".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
                    10.heightBox,
                    VxRating(onRatingUpdate: (value){},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      size: 25,
                      count: 5,
                      stepInt: true,
                    ),
                    10.heightBox,

                    "100Rs/Kg".text.color(redColor).fontFamily(bold).make(),

                    10.heightBox,

                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                "Seller".text.white.fontFamily(semibold).make(),
                                5.heightBox,
                                "In House Brands".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
                              ],
                            )),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.message_rounded,color: darkFontGrey),
                        )
                      ],
                    ).box.height(60).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "color".text.color(textfieldGrey).make(),
                            ),
                            Row(
                                children: List.generate(3,
                                      (index) => VxBox().size(40, 40).
                                  roundedFull.color(Vx.randomColor).
                                  margin(const EdgeInsets.symmetric(horizontal: 4))
                                      .make(),)
                            )
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),

                        //quntity list
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Quatity".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                                "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                                10.widthBox,
                                "(0 available)".text.color(textfieldGrey).make(),
                              ],
                            ),


                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),

                        //total row

                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total".text.color(textfieldGrey).make(),
                            ),
                            "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),

                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                      ],
                    ).box.white.shadowSm.make(),

                    //description section
                    10.heightBox,

                    "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                    10.heightBox,
                    "this is dumy item and dummy description here ....".text.color(darkFontGrey).make(),
                    10.heightBox,

                    //button section
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(itemdetailsButton.length, (index) => ListTile(
                        title: itemdetailsButton[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                        trailing: const Icon(Icons.arrow_forward),

                      )),
                    ),
                    10.heightBox,
          ],
        )
              )
    )
    )
    ]
    )
    );
  }
}

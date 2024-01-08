import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/Const/list.dart';
import 'package:e_mart/common%20_widget/bg_widget.dart';
import 'package:e_mart/common%20_widget/button.dart';
import 'package:e_mart/profileScreen/Components/detail_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                //edit profile button

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Align(
                    alignment: Alignment.topRight,
                      child: Icon(Icons.edit,color:whiteColor)
                  ).onTap(() { }),
                ),

                //user details section

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Row(
                     children: [
                       Image.asset("assets/images/profile.png",width: 90,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                       10.heightBox,
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           " Harry Potter".text.size(15).fontFamily(semibold).white.make(),
                           " harry potter@gmail.com".text.white.make(),
                         ],
                       ),
                       7.widthBox,
                       Expanded(
                         child: ourButton(
                           textColor: Colors.black,
                           title: "Log-Out",
                           onPress: (){},
                         ).box.height(40).make()
                       )
                     ],
                   ),
                 ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailscard(count: "00",tittle: "in your cart",width: context.screenWidth/3.4),
                    detailscard(count: "32",tittle: "in your WishList",width: context.screenWidth/3.2),
                    detailscard(count: "655",tittle: " your Orders",width: context.screenWidth/3.2)
                  ],
                ),
                //button sections

                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context , index){
                    return const Divider(
                      color: lightGrey,
                    );
                  },
                  itemCount: profilebuttonlist.length,
                    itemBuilder:(BuildContext ,int index){
                      return ListTile(
                        leading: Image.asset(profilebuttonicon[index],width: 22,),
                        title: profilebuttonlist[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                      ) ;
                    }
                ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make()

              ],
            )),
      )
    );
  }
}

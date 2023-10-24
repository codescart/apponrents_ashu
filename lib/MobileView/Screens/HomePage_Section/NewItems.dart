import 'package:apponrents/ConstantWidgets/Buttons/PrimaryButton.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/subtitleStyle.dart';
import 'package:flutter/material.dart';

import '../../../Constant/assets.dart';
import '../../../Constant/color.dart';
import '../../../ConstantWidgets/Buttons/Text_Button.dart';
import '../../../ConstantWidgets/Container/Container_widget.dart';
import '../../../ConstantWidgets/TextStyling/AppBarTitle.dart';
import '../../../ConstantWidgets/TextStyling/titleStyle.dart';
import '../../../main.dart';

class NewItems extends StatefulWidget {
  const NewItems({Key? key}) : super(key: key);

  @override
  State<NewItems> createState() => _NewItemsState();
}

class _NewItemsState extends State<NewItems> {
  List<UniqueCode> UniqueCodes = [
    UniqueCode("Wave Player - Waveform Audio Player for WordPress",
        "Founder Code", Graphics.unicodesBanner1, "(154)","38", "827"),
    UniqueCode("LiveSmart Video Chat",
        "Founder Code",Graphics.unicodesBanner2, "(256)","9490","98327"),
    UniqueCode("QrexOrder- SaaS Restaurants/ QR Menu/ WhatsApp Online",
        "Apponrents", Graphics.unicodesBanner3, "(751)", "9439", "39874"),
    UniqueCode("StoreGo SaaS- Online Store Builder",
        "Apponrents", Graphics.unicodesBanner4, "(751)", "9834", "9339"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics:ScrollPhysics(),
        itemCount: UniqueCodes.length,
        itemBuilder: (context, index) {
          return CustomContainer(
            width: deviceWidth/1.2,
            margin: const EdgeInsets.only(bottom: 20, right: 10),
            // padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            color:ColorConstant.whiteColor,
            child: Column(
              children: [
                CustomContainer(
                  width: deviceWidth,
                  height: deviceHeight / 5.5,
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(UniqueCodes[index].image),
                      fit: BoxFit.cover
                  ),
                ),
                SizedBox(height: 10,),
                SubTitle_Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  textColor: Colors.black,
                  Title: UniqueCodes[index].Title,
                ),
                SubTitle_Text(
                  padding: EdgeInsets.only(left: 10,bottom: 10),
                  textColor:ColorConstant.greyColor,
                  Title: "by "+UniqueCodes[index].by,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal:10),
                  title: Column(
                    children: [
                      SubTitle_Text(
                        Title: "₹"+UniqueCodes[index].price,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15.0, // Adjust the size of the stars as needed
                              );
                            }),
                          ),
                          SubTitle_Text(
                            textheight: 1,
                            padding: EdgeInsets.only(right: 10, bottom: 10),
                            textAlign: TextAlign.end,
                            textColor: Colors.black,
                            alignment: Alignment.center,
                            Title: UniqueCodes[index].rate,
                          ),
                        ],
                      ),
                      SubTitle_Text(
                        textheight: 1,
                        Title: UniqueCodes[index].sales+" Sales",
                      ),
                    ],
                  ),
                  trailing:Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PrimaryButton(
                        color: Colors.transparent,
                        border: Border.all(width: 1, color: ColorConstant.blueColor),
                        width: deviceWidth/8.5,
                        icon: Icons.shopping_cart,iconColor: ColorConstant.greyColor,
                      ),
                      SizedBox(width: 5,),
                      PrimaryButton(
                        border: Border.all(width: 1, color: ColorConstant.blueColor),
                        color: Colors.transparent,
                        textColor: ColorConstant.blueColor,
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        fontSize: 13,
                        width: deviceWidth/4,
                        Label: "Live preview",
                      )
                    ],
                  ) ,
                )
              ],
            ),
          );
        });
  }
}

class UniqueCode {
  final String Title;
  final String by;
  final String image;
  final String rate;
  final String sales;
  final String price;
  UniqueCode(this.Title, this.by, this.image, this.rate, this.sales, this.price);
}

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

class FeaturedCodes extends StatefulWidget {
  const FeaturedCodes({Key? key}) : super(key: key);

  @override
  State<FeaturedCodes> createState() => _FeaturedCodesState();
}

class _FeaturedCodesState extends State<FeaturedCodes> {
  List<Features> FeatureCodes = [
    Features("Wave Player - Waveform Audio Player for WordPress",
        "Founder Code", Graphics.unicodesBanner1, "(154)","38", "827"),
    Features("LiveSmart Video Chat",
        "Founder Code",Graphics.unicodesBanner2, "(256)","9490","98327"),
    Features("QrexOrder- SaaS Restaurants/ QR Menu/ WhatsApp Online",
        "Apponrents", Graphics.unicodesBanner3, "(751)", "9439", "39874"),
    Features("StoreGo SaaS- Online Store Builder",
        "Apponrents", Graphics.unicodesBanner4, "(751)", "9834", "9339"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics:ScrollPhysics(),
        itemCount: FeatureCodes.length,
        itemBuilder: (context, index) {
          return CustomContainer(
            margin: const EdgeInsets.only(bottom: 20),
            // padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            color:ColorConstant.whiteColor,
            child: Column(
              children: [
                CustomContainer(
                  width: deviceWidth,
                  height: deviceHeight / 5.5,
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(FeatureCodes[index].image),
                      fit: BoxFit.cover
                  ),
                ),
                SizedBox(height: 10,),
                SubTitle_Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  textColor: Colors.black,
                  Title: FeatureCodes[index].Title,
                ),
                SubTitle_Text(
                  padding: EdgeInsets.only(left: 10,bottom: 10),
                  textColor:ColorConstant.greyColor,
                  Title: "by "+FeatureCodes[index].by,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal:10),
                  title: Column(
                    children: [
                      SubTitle_Text(
                        Title: "₹"+FeatureCodes[index].price,
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
                            Title: FeatureCodes[index].rate,
                          ),
                        ],
                      ),
                      SubTitle_Text(
                        textheight: 1,
                        Title: FeatureCodes[index].sales+" Sales",
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

class Features {
  final String Title;
  final String by;
  final String image;
  final String rate;
  final String sales;
  final String price;
  Features(this.Title, this.by, this.image, this.rate, this.sales, this.price);
}

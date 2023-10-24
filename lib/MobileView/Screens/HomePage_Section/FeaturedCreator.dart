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

class FeaturedCreators extends StatefulWidget {
  const FeaturedCreators({Key? key}) : super(key: key);

  @override
  State<FeaturedCreators> createState() => _FeaturedCreatorsState();
}

class _FeaturedCreatorsState extends State<FeaturedCreators> {
  List<FeatureCreator> FeatureCreators = [
    FeatureCreator("iBilling- CRM, Accounting and Billing Software",
        "Founder Code", Graphics.unicodesBanner1, "(154)","38", "827"),
    FeatureCreator("HostBilling- Web Hosting Billing & Automatic Software",
        "Founder Code",Graphics.unicodesBanner2, "(256)","9490","98327"),
    FeatureCreator("Startupkit SaaS- Business Strategy and Planning Tool",
        "Apponrents", Graphics.unicodesBanner3, "(751)", "9439", "39874"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics:ScrollPhysics(),
        itemCount: FeatureCreators.length,
        itemBuilder: (context, index) {
          return CustomContainer(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0,0),
                  color: ColorConstant.greyColor.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3
              )
            ],
            margin: const EdgeInsets.only(bottom: 20),
            color:ColorConstant.whiteColor,
            // border: Border.all(width: 0.8, color: ColorConstant.greyColor.withOpacity(0.3)),
            child: Column(
              children: [
                CustomContainer(
                  width: deviceWidth,
                  height: deviceHeight / 5.5,
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(FeatureCreators[index].image),
                      fit: BoxFit.cover
                  ),
                ),
                SizedBox(height: 10,),
                SubTitle_Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  textColor: Colors.black,
                  Title: FeatureCreators[index].Title,
                ),
                SubTitle_Text(
                  padding: EdgeInsets.only(left: 10,bottom: 10),
                  textColor:ColorConstant.greyColor,
                  Title: "by "+FeatureCreators[index].by,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal:10),
                  title: Column(
                    children: [
                      SubTitle_Text(
                        Title: "₹"+FeatureCreators[index].price,
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
                            Title: FeatureCreators[index].rate,
                          ),
                        ],
                      ),
                      SubTitle_Text(
                        textheight: 1,
                        Title: FeatureCreators[index].sales+" Sales",
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

class FeatureCreator {
  final String Title;
  final String by;
  final String image;
  final String rate;
  final String sales;
  final String price;
  FeatureCreator(this.Title, this.by, this.image, this.rate, this.sales, this.price);
}

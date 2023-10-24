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

class FreeMonthsData extends StatefulWidget {
  const FreeMonthsData({Key? key}) : super(key: key);

  @override
  State<FreeMonthsData> createState() => _FreeMonthsDataState();
}

class _FreeMonthsDataState extends State<FreeMonthsData> {
  List<MonthsData> MonthList = [
    MonthsData("Wave Player - Waveform Audio Player for WordPress",
        "Founder Code", Graphics.unicodesBanner1, "(154)","38", "827"),
    MonthsData("LiveSmart Video Chat",
        "Founder Code",Graphics.unicodesBanner2, "(256)","9490","98327"),
    MonthsData("QrexOrder- SaaS Restaurants/ QR Menu/ WhatsApp Online",
        "Apponrents", Graphics.unicodesBanner3, "(751)", "9439", "39874"),
    MonthsData("StoreGo SaaS- Online Store Builder",
        "Apponrents", Graphics.unicodesBanner4, "(751)", "9834", "9339"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics:ScrollPhysics(),
        itemCount: MonthList.length,
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
            width: deviceWidth/1.3,
            margin: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
            color:ColorConstant.whiteColor,
            child: Column(
              children: [
                CustomContainer(
                  width: deviceWidth,
                  height: deviceHeight / 5.5,
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(MonthList[index].image),
                      fit: BoxFit.cover
                  ),
                ),
                ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal:10),
                    title:SubTitle_Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      padding: EdgeInsets.only(right: 10),
                      textColor: Colors.black,
                      Title: MonthList[index].Title,
                    ),
                    subtitle: SubTitle_Text(
                      padding: EdgeInsets.only(bottom: 10),
                      textColor:ColorConstant.greyColor,
                      Title: "by "+MonthList[index].by,
                    ),

                )
              ],
            ),
          );
        });
  }
}

class MonthsData {
  final String Title;
  final String by;
  final String image;
  final String rate;
  final String sales;
  final String price;
  MonthsData(this.Title, this.by, this.image, this.rate, this.sales, this.price);
}

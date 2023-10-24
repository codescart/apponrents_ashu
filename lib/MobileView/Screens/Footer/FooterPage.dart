import 'package:apponrents/Constant/assets.dart';
import 'package:apponrents/Constant/color.dart';
import 'package:apponrents/ConstantWidgets/Buttons/Text_Button.dart';
import 'package:apponrents/ConstantWidgets/Container/Container_widget.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/AppBarTitle.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/subtitleStyle.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/titleStyle.dart';
import 'package:apponrents/main.dart';
import 'package:flutter/material.dart';

import '../../../ConstantWidgets/TextStyling/smallTextStyle.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  final List<String> MarketList= [
    "Terms",'License','Market API','Become an affiliate'
  ];
  final List<String> HelpList= [
    "Help Center",'Authors'
  ];
  final List<String> Community= [
    "Community",'Blog','Forums','Meetups'
  ];
  final List<String> Meet= [
    "About Apponrents",'Careers','Privacy Policy','Sitemap'
  ];
  @override
  Widget build(BuildContext context) {
    return  CustomContainer(
      color: ColorConstant.appBarBgColor,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Image(image: AssetImage(Graphics.unicodesBanner4),width: deviceWidth/1.3,),
            SizedBox(height: 20,),
            Image(image: AssetImage(Graphics.unicodesBanner2),width: deviceWidth/1.3,),
            SizedBox(height: 40,),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title:HeadingOne(
                fontSize: deviceWidth/15,
                Title: "Apponrents",
              ),
              subtitle: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      SubTitle_Text(
                        textColor: ColorConstant.whiteColor,
                        Title: "34,098,905",
                      ),
                      Small_Text(
                          textColor: ColorConstant.whiteColor,
                          Title:"items sold")
                    ],
                  ),
                  SizedBox(width: deviceWidth/15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      SubTitle_Text(
                        textColor: ColorConstant.whiteColor,
                        Title: "₹ 34,098,905",
                      ),
                      Small_Text(
                          textColor: ColorConstant.whiteColor,
                          Title:"community earning"),
                    ],
                  ),
                ],
              ),
              trailing:Image(image: AssetImage(Graphics.certified),height: deviceWidth/4,)
              ),
            Divider(),
            TitleStyle(
              textColor: ColorConstant.greyColor,
              Title: "Apponrents.com".toUpperCase(),
            ),
            SizedBox(height: 10,),
            CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:List.generate(MarketList.length, (index) {
                  return Text_Button(
                    textColor: ColorConstant.whiteColor,
                    Title: MarketList[index],
                  );
                }),
              ),
            ),
            SizedBox(height: 10,),
            TitleStyle(
              textColor: ColorConstant.greyColor,
              Title: "Help".toUpperCase(),
            ),
            SizedBox(height: 10,),
            CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:List.generate(HelpList.length, (index) {
                  return Text_Button(
                    textColor: ColorConstant.whiteColor,
                    Title: HelpList[index],
                  );
                }),
              ),
            ),
            SizedBox(height: 10,),
            TitleStyle(
              textColor: ColorConstant.greyColor,
              Title: "Our Community".toUpperCase(),
            ),
            SizedBox(height: 10,),
            CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:List.generate(Community.length, (index) {
                  return Text_Button(
                    textColor: ColorConstant.whiteColor,
                    Title: Community[index],
                  );
                }),
              ),
            ),
            SizedBox(height: 10,),
            TitleStyle(
              textColor: ColorConstant.greyColor,
              Title: "Meet apponrents".toUpperCase(),
            ),
            SizedBox(height: 10,),
            CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:List.generate(Meet.length, (index) {
                  return Text_Button(
                    textColor: ColorConstant.whiteColor,
                    Title: Meet[index],
                  );
                }),
              ),
            ),
            SizedBox(height: 10,),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text_Button(
                  textColor: ColorConstant.whiteColor,
                  fontWeight: FontWeight.w600,
                  // https://apponrents.com/
                  Title: "Apponrents.com",
                ),
                Text_Button(
                  textColor: ColorConstant.whiteColor,
                  fontWeight: FontWeight.w600,
                  // https://apponrents.com/
                  Title: "Foundercodes.com",
                ),
              ],
            ),
            SizedBox(height: 15,),
            SubTitle_Text(
              alignment: Alignment.center,
              textColor: ColorConstant.greyColor,
              Title: "Prices is in Indian rupees and excludes tax",),
            SizedBox(height: 20,),
            SubTitle_Text(
              textAlign: TextAlign.center,
              textColor: ColorConstant.whiteColor,
              Title: "© 2023 Apponrents.com, trademarks and brands are the property of their respective owners.",
            ),
            SizedBox(height: 20,),
          ],
        ),
      );
  }
}

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

class LeadingMarketPlace extends StatefulWidget {
  const LeadingMarketPlace({Key? key}) : super(key: key);

  @override
  State<LeadingMarketPlace> createState() => _LeadingMarketPlaceState();
}

class _LeadingMarketPlaceState extends State<LeadingMarketPlace> {
  List<MarketPlace> LeadingMarketplaces = [
    MarketPlace("Home of the most popular scripts and plugins of all time",Icons.fireplace_sharp),
    MarketPlace("Clear documentation and support available", Icons.chat_bubble),
    MarketPlace("Quality reviewed creators and items", Icons.badge)
     ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics:ScrollPhysics(),
        itemCount: LeadingMarketplaces.length,
        itemBuilder: (context, index) {
          return CustomContainer(

            boxShadow: [
              BoxShadow(
                offset: Offset(0,0),
                color: ColorConstant.greyColor.withOpacity(0.4),
                blurRadius: 15,spreadRadius: 3
              )
            ],
            margin: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            color:ColorConstant.whiteColor,
            child:ListTile(
              leading:Icon(LeadingMarketplaces[index].icon),
              title: SubTitle_Text(
                Title: LeadingMarketplaces[index].Title,
              ),
            )
          );
        });
  }
}

class MarketPlace {
  final String Title;
  final IconData icon;
  MarketPlace(this.Title, this.icon );
}


import 'package:apponrents/ConstantWidgets/TextStyling/titleStyle.dart';
import 'package:apponrents/main.dart';
import 'package:flutter/material.dart';

import '../../../Constant/assets.dart';
import '../../Constant/color.dart';
import '../Container/Container_widget.dart';

class NoDataAvailable extends StatelessWidget {
  const NoDataAvailable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomContainer(
            height: deviceHeight/6.2,
            width: deviceWidth/1.5,
            image: const DecorationImage(
                image: AssetImage(
                  Graphics.noData,
                ),
                fit: BoxFit.cover),

          ),
          TitleStyle(
            textAlign: TextAlign.center,
            alignment: Alignment.bottomCenter,
            textColor: ColorConstant.greyColor,
            Title: "No data available",
          ) ,
        ],
      ),
    );
  }
}

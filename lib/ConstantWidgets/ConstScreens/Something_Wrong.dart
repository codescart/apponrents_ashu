
import 'package:apponrents/main.dart';
import 'package:flutter/material.dart';

import '../../../Constant/assets.dart';
import '../../Constant/color.dart';
import '../Container/Container_widget.dart';
import '../TextStyling/titleStyle.dart';

class SomethingWrong extends StatelessWidget {
  const SomethingWrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomContainer(
            height: deviceHeight/4.2,
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
            Title: "Something went wrong \n Try again later!",
          ) ,
        ],
      ),
    );
  }
}

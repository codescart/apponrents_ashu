
import 'package:apponrents/main.dart';
import 'package:flutter/material.dart';

import '../../../Constant/assets.dart';
import '../../../Constant/color.dart';

class LoadingData extends StatelessWidget {
  const LoadingData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: ColorConstant.whiteColor,
      height: deviceHeight, width: deviceWidth,
      child: Image(image: AssetImage(Graphics.loading,),width: deviceWidth/2,),
    );
  }
}

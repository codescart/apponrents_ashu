
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Constant/color.dart';


class DesktopSubTitle_Text extends StatelessWidget {
  final String? Title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? width;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool? softWrap;
  final TextOverflow? overflow;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final double? textheight;
  DesktopSubTitle_Text({this.Title, this.fontSize, this.fontWeight, this.textColor, this.width, this.textAlign, this.maxLines, this.softWrap, this.overflow, this.padding, this.alignment, this.textheight}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding,
      alignment:alignment==null?Alignment.centerLeft:alignment,
      child: Text(
        maxLines: maxLines,
          overflow: overflow,
        softWrap: softWrap,
        textAlign:textAlign,
          Title==null?"":Title!,
          style: GoogleFonts.alike(
            textStyle: TextStyle(//15
              height: textheight??1.5,
                fontSize: fontSize==null?MediaQuery.of(context).size.width/50:fontSize,
                fontWeight:fontWeight==null?FontWeight.normal:fontWeight,
                fontStyle: FontStyle.normal,
                color: textColor==null?ColorConstant.darkBlackColor:textColor
            ),
          )),
    );
    //   Text(Title==null?"":Title!,
    //   style: TextStyle(
    //       fontSize:fontSize==null?20:fontSize,
    //       fontWeight:fontWeight==null?FontWeight.normal:fontWeight,
    //       color: textColor==null?ColorConstant.whiteColor:textColor ),
    // );
  }
}

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

class UnicodeScripts extends StatefulWidget {
  const UnicodeScripts({Key? key}) : super(key: key);

  @override
  State<UnicodeScripts> createState() => _UnicodeScriptsState();
}

class _UnicodeScriptsState extends State<UnicodeScripts> {
  List<UniqueCode> UniqueCodes = [
   UniqueCode("Wave Player - Waveform Audio Player for WordPress",
       "Founder Code", Graphics.unicodesBanner1, "(154)"),
    UniqueCode("LiveSmart Video Chat",
        "Founder Code",Graphics.unicodesBanner2, "(256)"),
    UniqueCode("QrexOrder- SaaS Restaurants/ QR Menu/ WhatsApp Online",
        "Apponrents", Graphics.unicodesBanner3, "(751)"),
    UniqueCode("StoreGo SaaS- Online Store Builder",
        "Apponrents", Graphics.unicodesBanner4, "(751)"),
    ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics:ScrollPhysics(),
        itemCount: UniqueCodes.length,
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
                      image: AssetImage(UniqueCodes[index].image),
                      fit: BoxFit.cover
                  ),
                ),
                SizedBox(height: 10,),
                TitleStyle(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  textColor: Colors.black,
                  Title: UniqueCodes[index].Title,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubTitle_Text(
                      padding: EdgeInsets.only(left: 10,bottom: 10),
                      textColor: Colors.black,
                      alignment: Alignment.center,
                      Title: "by "+UniqueCodes[index].by,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
                ),
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
  UniqueCode(this.Title, this.by, this.image, this.rate);
}

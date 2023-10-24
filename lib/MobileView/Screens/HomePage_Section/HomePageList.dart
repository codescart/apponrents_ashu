import 'package:apponrents/Constant/assets.dart';
import 'package:apponrents/Constant/color.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/AppBarTitle.dart';
import 'package:flutter/material.dart';
import '../../../ConstantWidgets/Buttons/Text_Button.dart';
import '../../../ConstantWidgets/Container/Container_widget.dart';
import '../../../ConstantWidgets/TextStyling/titleStyle.dart';
import '../../../main.dart';

class HomePageLangList extends StatefulWidget {
   HomePageLangList({Key? key}) : super(key: key);

  @override
  State<HomePageLangList> createState() => _HomePageLangListState();
}

class _HomePageLangListState extends State<HomePageLangList> {
  List<TypeList> Types = [
    TypeList("WordPress", "Thousands of WordPress plugins",
        Graphics.plugin1),
    TypeList("PHP Scripts", "Thousands of PHP Scripts",
        Graphics.plugin2),
    TypeList("Mobile", "Mobile app templates, games and more",
        Graphics.plugin3),
    TypeList("HTML 5", "Thousands of HTML 5 templates",
        Graphics.plugin4),
    TypeList("Javascript", "Large range of javascript code and add-ons",
        Graphics.plugin5),
    TypeList("Plugins", "Online store plugins,code and scripts",
        Graphics.plugin2)
  ];
  var isTaped;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        physics:ScrollPhysics(),
        itemCount: Types.length,
        itemBuilder: (context, index) {
          return CustomContainer(
            onTap: (){
              setState(() {
                isTaped = Types[index].Title;
              });
            },
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            color:isTaped == Types[index].Title?ColorConstant.whiteColor:Color(0xfff5f6f9),
            child: Column(
              children: [
                HeadingOne(
                  alignment: Alignment.center,
                  textColor: Colors.black,
                  Title: Types[index].Title,
                ),
                const SizedBox(
                  height: 10,
                ),
                TitleStyle(
                  textAlign: TextAlign.center,
                  textColor: Colors.black,
                  alignment: Alignment.center,
                  Title: Types[index].subtitle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text_Button(
                      Title: "Newest",
                    ),
                    Text_Button(
                      Title: "Bestseller",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomContainer(
                  width: deviceWidth / 1.4,
                  height: deviceHeight / 7,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(Types[index].image),
                      fit: BoxFit.cover
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class TypeList {
  final String Title;
  final String subtitle;
  final String image;
  TypeList(this.Title, this.subtitle, this.image);
}

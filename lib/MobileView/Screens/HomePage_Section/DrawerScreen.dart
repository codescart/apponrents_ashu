import 'package:apponrents/Constant/color.dart';
import 'package:apponrents/ConstantWidgets/Container/Container_widget.dart';
import 'package:apponrents/ConstantWidgets/Text%20Field/TextField_widget.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/AppBarTitle.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/subtitleStyle.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/titleStyle.dart';
import 'package:apponrents/main.dart';
import 'package:flutter/material.dart';

List<String> Codes= ["Video", 'Audio','Graphics','Photos','3D Files'];
final List<Map<String, dynamic>> dataList = [
  {
    'category': 'All Items',
    'items': ['Popular Files', 'Featured Files', 'Top New Files', 'Follow Feed', 'Top Authors', 'Top New Authors','Public Collectios','View All Catogeries'],
  },
  {
    'category': 'WordPress',
    'items': ['Show all WordPress', 'Popular Items', 'Add-ons','Advertising','Calendar','eCommerce'],
  },
  {
    'category': 'eCommerce',
    'items': ['Show all eCommerce', 'Easy Digital downloads', 'Jigoshop','Magneto Extensions','OpenCart','osCommeerce','Prestashop'],
  },
  {
    'category': 'JavaScripts',
    'items': ['Show all JavaScript', 'Popular Items', 'Animated SVGs','Calendars','Countdowns','Database Abstractions'],
  },
  {
    'category': 'CSS',
    'items': ['Show all CSS', 'Popular Items', 'Animations and effects','Buttons','Charts and Graphs','Forms'],
  },
  {
    'category': 'Mobile',
    'items': ['Show all mobile', 'Popular Items', 'Android','Flutter','iOS','Native web'],
  },
  {
    'category': 'HTML5',
    'items': ['Show all HTML5', 'Popular Items', '3D','Ad Templates','Canvas','Charts and Graphs'],
  },
  {
    'category': 'AI Tools',
    'items': ['Show all AI Tools', 'Popular Items', 'AI Writes and Content Generators','AI Image and Video'],
  },
  {
    'category': 'WP Themes',
    'items': ['Show all mobile', 'Popular Items', 'Android','Flutter','iOS','Native web'],
  },
  {
    'category': 'Plugins',
    'items': ['Show all Plugins', 'Popular Items', 'Concrete5','Drupal','ExpressionEngine','Joomla','Megneto Extensions'],
  },
];

class DrawerScreen extends StatelessWidget {
   DrawerScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.appBarBgColor,
      child:Column(
        children: [
          SizedBox(height: deviceHeight/25,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 8,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingOne(
                  Title: "Apponrents.com",
                ),
                IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.cancel_outlined, color: ColorConstant.whiteColor,))
              ],
            ),
          ),
          SizedBox(height:5,),
          ExpansionTile(
            backgroundColor: Colors.orange,
            childrenPadding: EdgeInsets.only(left: 0, right: 0,top: 0),
            collapsedBackgroundColor: Colors.orange,
              title: HeadingOne(
                alignment: Alignment.centerLeft,
                Title: "Code",
              ),
            children: [
             CustomContainer(
               borderRadius: BorderRadius.circular(0),
               padding: const EdgeInsets.only(left: 15,right: 8,top: 0, bottom: 0),
               color: ColorConstant.appBarBgColor,
               height:deviceHeight/2.9,
               child: ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                 padding: EdgeInsets.all(0),
                 itemCount: Codes.length,
                   itemBuilder: (context, index){
                 return ListTile(
                   title: SubTitle_Text(
                       textColor: ColorConstant.whiteColor,
                       Title:Codes[index]),
                 );
               }),
             ),
            ],
          ),
          CustomContainer(
            color: ColorConstant.darkBlackColor.withOpacity(0.5),
            padding: EdgeInsets.all(15),
            child: CustomTextField(
              height: 40,
              fieldRadius: BorderRadius.circular(10),
              fillColor: ColorConstant.whiteColor,
              label: "Search",
              sufix: Icon(Icons.search),
            ),
          ),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
             title: TitleStyle(
                textColor: ColorConstant.whiteColor,
                Title: dataList[index]['category'],),
              // title: (dataList[index]['category']),
              children: dataList[index]['items'].map<Widget>((item) {
                return ListTile(
                  contentPadding: EdgeInsets.only(left: 25),
                  title: SubTitle_Text(
                      textColor: ColorConstant.whiteColor,
                      Title:item),
                );
              }).toList(),
            );
          },
        ),
      ),

        ],
      ) ,
    );
  }
}


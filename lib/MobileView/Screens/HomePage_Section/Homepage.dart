import 'package:apponrents/Constant/assets.dart';
import 'package:apponrents/ConstantWidgets/Buttons/PrimaryButton.dart';
import 'package:apponrents/ConstantWidgets/Buttons/Text_Button.dart';
import 'package:apponrents/ConstantWidgets/Container/Container_widget.dart';
import 'package:apponrents/ConstantWidgets/Text%20Field/TextField_widget.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/AppBarTitle.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/smallTextStyle.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/subtitleStyle.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/titleStyle.dart';
import 'package:apponrents/MobileView/Screens/Footer/FooterPage.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/BestSelllingWeek.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/FeaturedCreator.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/FreeMonthsData.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/HomePageList.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/NewItems.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/UnicodeScripts.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/UnlimitedDownloads.dart';
import 'package:apponrents/MobileView/Screens/HomePage_Section/leadingMarketplace.dart';
import 'package:apponrents/main.dart';
import 'package:flutter/material.dart';
import '../../../Constant/color.dart';
import 'DrawerScreen.dart';
import 'FeaturedCode.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> items = [
    'All catogeries',
    'JavaScript',
    'PHP Script',
    '.Net',
    'WordPress',
    'Plugins',
    'CSS',
    'HTML 5',
    'Mobile',
    'Apps',
    'Skin',
    'Edge Animate Templates'
  ];
  String selectedItem = 'All catogeries';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebedf4),
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
                //close drawer, if drawer is open
              } else {
                scaffoldKey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 28,
            )),
        backgroundColor: ColorConstant.appBarBgColor,
        centerTitle: true,
        title: HeadingOne(
          alignment: Alignment.center,
          Title: "Apponrents",
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: ColorConstant.whiteColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: ColorConstant.whiteColor,
              ))
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Column(
          children: [
            CustomContainer(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  TitleStyle(
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title:
                        'Thousands of code, scripts & plugins for every website build',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SubTitle_Text(
                    textAlign: TextAlign.center,
                    alignment: Alignment.center,
                    Title:
                    "Choose from ecommerce plugins, mobile app templates, PHP, Bootstrap & more for any budget,built by the world's best developers.",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    label: "eg eCommerce plugin",
                    borderRadius: BorderRadius.circular(10),
                    fieldRadius: BorderRadius.circular(10),
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    height: 60,
                    fillColor: ColorConstant.whiteColor,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          color: ColorConstant.greyColor.withOpacity(0.6),
                          blurRadius: 3,
                          spreadRadius: 0)
                    ],
                    sufix: PrimaryButton(
                      borderRadius: BorderRadius.circular(10),
                      margin: const EdgeInsets.only(right: 8),
                      width: deviceWidth / 4,
                      icon: Icons.search,
                      Label: "Search",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image(
                      image: AssetImage(Graphics.mainpageDummy)),
                  const SizedBox(
                    height: 30,
                  ),
                  HomePageLangList(),
                  SizedBox(
                    height: 10,
                  ),
                  PrimaryButton(
                    width: deviceWidth / 2,
                    Label: "View all catogerie",
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TitleStyle(
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title:
                    "Unique code, snipets and plugins made by world-class creators",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  UnicodeScripts(),
                  SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                    width: deviceWidth / 2,
                    Label: "View all code",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    Title: " Featured code",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SubTitle_Text(
                    textAlign: TextAlign.center,
                    Title:
                    "Every week. our staff personally hand-pick some of the best new code, scripts, and plugins from our collection.",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FeaturedCodes(),
                  SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                    width: deviceWidth / 1.6,
                    Label: "View all featured code items",
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title:
                    'The world-leading marketplace\nfor code, scripts and plugins',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LeadingMarketPlace(),
                  SizedBox(
                    height: 30,
                  ),
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title: 'Check out our newest code,\nscripts and templates',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SubTitle_Text(
                    textAlign: TextAlign.center,
                    alignment: Alignment.center,
                    Title:
                    "We carefully review new entries from our community one by one"
                        "to make sure they meet high-quality design and functionality"
                        " standards. From PHP scripts to Bootstrap skins,"
                        " you're always sure tot find high-quality assets created by brilliant proffesionals.",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomContainer(
                    border: Border.all(width: 1.5, color: ColorConstant.primaryColor),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: ColorConstant.whiteColor,
                    child: DropdownButton<String>(
                      underline: Text(""),
                      value: selectedItem,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedItem = newValue!;
                        });
                      },
                      items: items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: TitleStyle(
                            textColor: ColorConstant.darkBlackColor,
                            width: deviceWidth / 1.3,
                            Title: item,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomContainer(
                      color: Colors.transparent,
                      height: deviceHeight / 2.5,
                      width: deviceWidth,
                      child: NewItems()),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(
              width: deviceWidth / 2,
              Label: "View more new items",
            ),
            SizedBox(
              height: 20,
            ),
            CustomContainer(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              color: ColorConstant.whiteColor,
              child: Column(
                children: [
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title: 'Featured creator',
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.cloud,
                      color: Colors.blue,
                      size: 60,
                    ),
                    title: SubTitle_Text(
                      textColor: ColorConstant.darkBlackColor,
                      Title: "CloudOnex",
                    ),
                    subtitle: Small_Text(
                      alignment: Alignment.centerLeft,
                      Title: "Sweden, Member since May 2014",
                    ),
                  ),
                  SubTitle_Text(
                    padding: EdgeInsets.only(left: 10),
                    Title:
                        "Our themes and templates are produced by world-class creators (or Authors, as we call them),"
                        "Explore the best of the week.",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FeaturedCreators()
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomContainer(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title: 'Browse this week\'s best sellling WordPress plugins',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SubTitle_Text(
                    alignment: Alignment.center,
                    Title: "This week's best WordPress plugins arrived",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BestSellingOfWeek(),
                  SizedBox(
                    height: 10,
                  ),
                  PrimaryButton(
                    width: deviceWidth / 2,
                    Label: "View more bestsellers",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomContainer(
              padding: EdgeInsets.only(top: 8, bottom: 10),
              color: ColorConstant.whiteColor,
              child: Column(
                children: [
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title: 'Unlimited downloads',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SubTitle_Text(
                    textAlign: TextAlign.center,
                    alignment: Alignment.center,
                    Title:
                        "Enjoy millions of plugins, WrdPress themes, web templates & more with apponrents Elements. All for one low cost, cancel any time.",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title: 'Apponrents',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomContainer(
                      color: Colors.transparent,
                      height: deviceHeight / 3,
                      width: deviceWidth,
                      child: UnlimitedDownloads()),
                  SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                    width: deviceWidth / 1.5,
                    Label: "Get to apponrents Elements",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomContainer(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                children: [
                  TitleStyle(
                    alignment: Alignment.center,
                    fontSize: deviceWidth / 18,
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                    textAlign: TextAlign.center,
                    Title: 'Grab September\'s free items',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SubTitle_Text(
                    textAlign: TextAlign.center,
                    alignment: Alignment.center,
                    Title: "Every month there are new freebies ready for you"
                        " to enjoy on Apponrents.com from scripts and plugins"
                        " here on Apponrents.com to e-commerce and WordPress themes,"
                        " from graphic templates to top-quality stock footage."
                        " Get them while you can!",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomContainer(
                      color: Colors.transparent,
                      height: deviceHeight / 3.3,
                      width: deviceWidth,
                      child: FreeMonthsData()),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            FooterPage(),
          ],
        ),
      ),
    );
  }
}

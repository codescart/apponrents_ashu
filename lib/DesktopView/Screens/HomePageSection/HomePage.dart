import 'package:apponrents/Constant/color.dart';
import 'package:apponrents/ConstantWidgets/Buttons/PrimaryButton.dart';
import 'package:apponrents/ConstantWidgets/Container/Container_widget.dart';
import 'package:apponrents/ConstantWidgets/TextStyling/subtitleStyle.dart';
import 'package:apponrents/DesktopView/ConstantWidgets/TextStyling/smallTextStyle.dart';
import 'package:apponrents/DesktopView/ConstantWidgets/TextStyling/subtitleStyle.dart';
import 'package:apponrents/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../MobileView/Screens/HomePage_Section/DrawerScreen.dart';
import '../../ConstantWidgets/Buttons/PrimaryButton.dart';

class DeskTopHomePage extends StatefulWidget {
  const DeskTopHomePage({Key? key}) : super(key: key);

  @override
  State<DeskTopHomePage> createState() => _DeskTopHomePageState();
}

class _DeskTopHomePageState extends State<DeskTopHomePage> {
  bool isForumHovered = false;
  bool isSellingHovered = false;
  bool isProductsHovered = false;
  bool isSignInHovered = false;
  bool webtheme = false;
  bool unlimitedDownload = false;

  void handleMouseEnter(String item) {
    setState(() {
      if (item == 'Forum') {
        isForumHovered = true;
      } else if (item == 'Selling') {
        isSellingHovered = true;
      } else if (item == 'Products') {
        isProductsHovered = true;
      } else if (item == 'SignIn') {
        isSignInHovered = true;
      } else if (item == 'webtheme') {
        webtheme = true;
      } else if (item == 'unlimitedDownload') {
        unlimitedDownload = true;
      }
    });
  }

  void handleMouseExit(String item) {
    setState(() {
      if (item == 'Forum') {
        isForumHovered = false;
      } else if (item == 'Selling') {
        isSellingHovered = false;
      } else if (item == 'Products') {
        isProductsHovered = false;
      } else if (item == 'SignIn') {
        isSignInHovered = false;
      } else if (item == 'webtheme') {
        webtheme = false;
      } else if (item == 'unlimitedDownload') {
        unlimitedDownload = false;
      }
    });
  }

  void handleEnter(int index) {
    setState(() {
      isCodesHovered[index] = true;
    });
  }

  void handleExit(int index) {
    setState(() {
      isCodesHovered[index] = false;
    });
  }

  List<bool> isCodesHovered = List.generate(Codes.length, (index) => false);
  int selectedCategoryIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.appBarBgColor,
        leading: Icon(
          Icons.account_box,
          size: 50,
          color: ColorConstant.whiteColor,
        ),
        actions: [
          MouseRegion(
            cursor: isForumHovered
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            onEnter: (_) => handleMouseEnter('Forum'),
            onExit: (_) => handleMouseExit('Forum'),
            child: DesktopSmall_Text(
              textColor: isForumHovered
                  ? ColorConstant.whiteColor
                  : ColorConstant.greyColor,
              Title: "Forum",
            ),
          ),
          SizedBox(
            width: 20,
          ),
          MouseRegion(
            cursor: isSellingHovered
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            onEnter: (_) => handleMouseEnter('Selling'),
            onExit: (_) => handleMouseExit('Selling'),
            child: DesktopSmall_Text(
              textColor: isSellingHovered
                  ? ColorConstant.whiteColor
                  : ColorConstant.greyColor,
              Title: "Start Selling",
            ),
          ),
          SizedBox(
            width: 20,
          ),
          MouseRegion(
            cursor: isProductsHovered
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            onEnter: (_) => handleMouseEnter('Products'),
            onExit: (_) => handleMouseExit('Products'),
            child: DesktopSmall_Text(
              textColor: isProductsHovered
                  ? ColorConstant.whiteColor
                  : ColorConstant.greyColor,
              Title: "Our Products",
            ),
          ),
          SizedBox(
            width: 20,
          ),
          MouseRegion(
            cursor: isSignInHovered
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            onEnter: (_) => handleMouseEnter('SignIn'),
            onExit: (_) => handleMouseExit('SignIn'),
            child: DesktopPrimaryButton(
              color: isSignInHovered
                  ? ColorConstant.primaryColor
                  : ColorConstant.greyColor,
              icon: Icons.add_shopping_cart,
              Label: "Sign In",
              width: deviceWidth / 12,
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(deviceHeight / 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    onEnter: (_) => handleMouseEnter('webtheme'),
                    onExit: (_) => handleMouseExit('webtheme'),
                    child: DesktopSmall_Text(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      textColor: webtheme
                          ? ColorConstant.whiteColor
                          : ColorConstant.greyColor,
                      Title: "Web Theme & Templates  |",
                    ),
                  ),
                  CustomContainer(
                    alignment: Alignment.centerLeft,
                    width: deviceWidth / 2.5,
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(Codes.length, (index) {
                        return MouseRegion(
                          onEnter: (_) => handleEnter(index),
                          onExit: (_) => handleExit(index),
                          child: DesktopSmall_Text(
                            textColor: isCodesHovered[index]
                                ? ColorConstant.whiteColor
                                : ColorConstant.greyColor,
                            Title: Codes[index],
                          ),
                        );
                      }),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) => handleMouseEnter('unlimitedDownload'),
                    onExit: (_) => handleMouseExit('unlimitedDownload'),
                    child: DesktopSmall_Text(
                      padding: EdgeInsets.only(right: 10, bottom: 10),
                      textColor: unlimitedDownload
                          ? ColorConstant.whiteColor
                          : ColorConstant.greyColor,
                      Title: "|  Unlimited Downloads",
                    ),
                  ),
                ],
              ),
              CustomContainer(
                  height: 35,
                  borderRadius: BorderRadius.circular(0),
                  color: ColorConstant.whiteColor,
                  child: Row(
                    children: List.generate(
                      dataList.length,
                      (index) => buildCategory(index),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    final category = dataList[index]['category'];

    return MouseRegion(
      onEnter: (_) {
        // Handle mouse hover
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      onExit: (_) {
        // Handle mouse exit
        setState(() {
          selectedCategoryIndex = -1;
        });
      },
      child: PopupMenuButton(
        offset: Offset(0,32),
        itemBuilder: (BuildContext context) {
          return dataList[index]['items']
              .map<PopupMenuEntry<String>>(
                (item) => PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                ),
              )
              .toList();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            category,
            style: TextStyle(
              fontWeight: selectedCategoryIndex == index
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

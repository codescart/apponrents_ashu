
import 'package:flutter/material.dart';

import 'DesktopView/Screens/HomePageSection/HomePage.dart';
import 'MobileView/Screens/HomePage_Section/Homepage.dart';

void main() {
  runApp(const MyApp());
}

var deviceHeight;
var deviceWidth;
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    deviceHeight= MediaQuery.of(context).size.height;
    deviceWidth= MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apponrents',
      theme: ThemeData(
        dividerColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:deviceWidth<=600? HomePage():DeskTopHomePage(),
    );
  }
}



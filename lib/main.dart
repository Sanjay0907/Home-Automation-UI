import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_automation_app_ui/pages/homepage.dart';
// import 'package:home_automation_app_ui/nav_bar_homepage.dart';
import 'package:home_automation_app_ui/onboarding_UI/page1.dart';
import 'package:home_automation_app_ui/slider/lock_slider.dart';
import 'package:home_automation_app_ui/slider/unlock_slider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: ABC(),
      home: Intro_Page_1(),
      // home: XYZ(),
      // home: NavBar(),
    );
  }
}

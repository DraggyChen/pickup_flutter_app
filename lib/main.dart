import 'package:flutter/material.dart';
import 'package:pickup/view/map/TestMap.dart';
import 'package:pickup/view/navigation/navigation_bar.dart';
import 'login_screen.dart';
import 'view/register/personal_data.dart';
import 'view/navigation/navigation_bar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigation_Bar(),  //
      //   home: TestApp(),  //測試地圖畫面作為入口

    );
  }

}
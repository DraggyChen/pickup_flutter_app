import 'package:flutter/material.dart';
import 'package:pickup/view/navigation_bar.dart';
import 'login_screen.dart';
import 'view/register/personal_data.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),  //使用．．畫面作為入口
    );
  }

}
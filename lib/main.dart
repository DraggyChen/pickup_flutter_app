import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register/personal_data.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonalData(),  //使用登入畫面作為入口
    );
  }

}
import 'package:flutter/material.dart';

class NavigationStyles {
  static const TextStyle BlockText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static ButtonStyle navButton = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    fixedSize: Size(50, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
      side: BorderSide.none, // 這將去除邊界
    ),
    elevation: 0.0, // 這將去除陰影
  );


}

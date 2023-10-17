import 'package:flutter/material.dart';

class TrafficStyles {
  static const TextStyle BlockText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static ButtonStyle blockButton = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    fixedSize: Size(150, 300),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );

}

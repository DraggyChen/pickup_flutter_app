import 'package:flutter/material.dart';

class CustomStyles {
  static const TextStyle topTitleStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle leftContentStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle ButtonContentStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle TitleUsernameStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle TitleUsernameStyle_larger = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static ButtonStyle home_car = ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(255, 242, 188, 1),
    fixedSize: Size(400, 130),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
  //聊天室
  static ButtonStyle home_chat = ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(144, 238, 144, 1),
    fixedSize: Size(180, 170),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
  //論壇
  static ButtonStyle home_forum = ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(173, 216, 230, 1),
    fixedSize: Size(180, 170),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );

  static ButtonStyle home_traffics = ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(255, 182, 193, 1), // 粉红色
    fixedSize: Size(400, 130),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );

}

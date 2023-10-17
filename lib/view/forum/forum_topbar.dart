import 'package:flutter/material.dart';

class ForumTopBar extends StatelessWidget {
  final String title;

  ForumTopBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 左邊空白區域
          Expanded(
            child: Container(),
          ),

          // 中間文字
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // 右邊的圖標
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.search, size: 35,), // 這是搜索圖標
                SizedBox(width: 10),
                Icon(Icons.menu, size: 35,), // 這是那三條橫線樣子的選單
                // SizedBox(width: 20), // 這裡是為了留一點邊距
              ],
            ),
          ),
        ],
      ),
    );
  }
}
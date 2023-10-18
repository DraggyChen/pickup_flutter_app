import 'package:flutter/material.dart';

class CarpoolTopBar extends StatelessWidget {
  final String title;

  CarpoolTopBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 左邊箭頭區域
          Expanded(

            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 30,),
                onPressed: () {
                  //返回畫面
                  // Navigator.of(context).pop();
                },
              ),
            )
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

          // 右邊加號
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add, size: 30,), // 這是搜索圖標
              ],
            ),
          ),
        ],
      ),
    );
  }
}
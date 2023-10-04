import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final IconData iconData; // 用於表示圖標
  final String title; // 用於表示文字內容
  final VoidCallback onTap; // 點擊箭頭時的回調函數

  SettingsRow(
      {required this.iconData, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            iconData,
            size: 40,
          ),
          SizedBox(width: 20),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 25,
          ),
        ],
      ),
    );
  }
}

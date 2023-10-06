import 'package:flutter/material.dart';
import 'HomeStyles.dart';

class RowBlockInfo extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final String imagePath;
  final ButtonStyle style;
  final bool isReverse;  // 新增的參數

  RowBlockInfo({
    required this.onPressed,
    required this.buttonText,
    required this.imagePath,
    required this.style,
    this.isReverse = false,  // 預設值為 false
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,  // 請根據您的需求設定
      height: 160, // 請根據您的需求設定
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Row(
          children: isReverse  // 使用條件運算符判斷元素的順序
              ? [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(buttonText, style: HomeStyles.topTitleStyle),
              ),
            ),
          ]
              : [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(buttonText, style: HomeStyles.topTitleStyle),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

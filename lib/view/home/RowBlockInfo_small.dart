import 'package:flutter/material.dart';
import '../../style/styles.dart';

class RowBlockInfo_small extends StatelessWidget {
  final String text;
  final String imagePath;
  final ButtonStyle? buttonStyle;

  RowBlockInfo_small({
    required this.text,
    required this.imagePath,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250), // 調整這個值以獲得最佳效果，防止Row的Expanded中的Align無用
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: () {},
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: -10,  // 這會將圖片放到右邊
              child: Image.asset(imagePath, width: 100, height: 100, color: Colors.black),
            ),
            Positioned(
              bottom: 10, // 這會將文字放到底部
              left: 0,   // 這會將文字放到左邊
              child: Text(text, style: CustomStyles.topTitleStyle),
            ),
          ],
        ),
      ),
    );
  }
}


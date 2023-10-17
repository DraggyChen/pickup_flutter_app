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
      constraints: BoxConstraints(maxWidth: 250), // 調整這個值以獲得最佳效果
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: () {},
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                Image.asset(imagePath, width: 100, height: 100, color: Colors.black),
              ],
            ),
            // SizedBox(height: 40),
            Row(
              children: [
                Text(text, style: CustomStyles.topTitleStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


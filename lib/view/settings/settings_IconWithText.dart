import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final String imagePath;
  final String text;
  final double imageWidth;
  final double imageHeight;
  final double containerWidth;
  final double containerHeight;

  IconWithText({
    required this.imagePath,
    required this.text,
    this.imageWidth = 30.0,
    this.imageHeight = 30.0,
    this.containerWidth = 50.0,
    this.containerHeight = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          child: Center( // 這裡使用Center可以確保圖片始終位於容器的中央
            child: Image.asset(
              imagePath,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(text, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}

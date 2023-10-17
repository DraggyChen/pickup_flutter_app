import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final String imagePath;
  final String title; //
  final VoidCallback onTap; //

  SettingsRow({required this.imagePath, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(imagePath, width: 40, height: 40),  //
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

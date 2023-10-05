import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrafficInfo extends StatefulWidget {
  @override
  _TrafficInfoState createState() => _TrafficInfoState();
}

class _TrafficInfoState extends State<TrafficInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* 指定背景為粉紅色 */
      backgroundColor: const Color(0xffffffeaed),
        body: Padding(
        padding: EdgeInsets.only(
            top: 16.0 + MediaQuery.of(context).padding.top,
            left: 15.0,
            right: 15.0,
            bottom: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "交通資訊",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

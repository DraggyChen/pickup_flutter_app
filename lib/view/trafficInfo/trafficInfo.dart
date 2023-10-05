import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/view/trafficInfo/BlockInfo.dart';
import 'package:pickup/view/trafficInfo/TrafficStyles.dart';

import '../../style/styles.dart';

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
              /* 標題：交通資訊 */
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "交通資訊",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              /* 校車班次表, 接駁車班次表 */
              Row(
                children: [
                  Expanded(
                      child: BlockInfoButton(
                    imagePath: 'assets/images/trafficinfo/School_Bus.png',
                    text: "校車班次表",
                    onPressed: () {
                      //校車班次表UI
                    },
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: BlockInfoButton(
                      imagePath: 'assets/images/trafficinfo/Shuttle_Bus.png',
                      text: "接駁車班次表",
                      onPressed: () {
                        //接駁車班次表UI
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              /* 公車時刻表 */
              Row(
                children: [
                  Expanded(
                      child: BlockInfoButton(
                    imagePath: 'assets/images/trafficinfo/Bus.png',
                    text: "公車時刻表",
                    onPressed: () {
                      //公車時刻表 UI
                    },
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: BlockInfoButton(
                    imagePath: 'assets/images/trafficinfo/Airport_Tube.png',
                    text: "機捷時刻表",
                    onPressed: () {
                      //公車時刻表 UI
                    },
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

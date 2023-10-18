import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/view/carpool/carpool_posts.dart';
import 'package:pickup/view/carpool/carpool_topbar.dart';
import 'package:pickup/view/forum/forum_categories.dart';
import 'package:pickup/view/forum/forum_posts.dart';
import 'package:pickup/view/forum/forum_topbar.dart';
import 'package:pickup/view/trafficInfo/traffic_blockInfo.dart';
import 'package:pickup/view/trafficInfo/traffic_styles.dart';

import '../../style/styles.dart';

class CarpoolHome extends StatefulWidget {
  @override
  _ForumHomeState createState() => _ForumHomeState();
}

class _ForumHomeState extends State<CarpoolHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: Stack(
        children: [
          /* 先設置上方固定bar的藍色區域 */
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 1.32,
            child: Container(
              color: Colors.amber.shade50,
            ),
          ),
          /* 主體 */
          Padding(
            padding: EdgeInsets.only(
                top: 16.0 + MediaQuery.of(context).padding.top,
                left: 15.0,
                right: 15.0,
                bottom: 16.0),
            child: Column(
              children: [
                // 上方固定bar
                CarpoolTopBar(title: '共乘行程'),
                /* 主體可滑動區域 */
                Container(
                  color: Colors.amber.shade50,
                  child: SizedBox(
                    height: 16,
                  ), // 這里給予相同的背景顏色
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        /* 各個駕駛發車資訊 */
                        CarpoolPosts(
                            starRate: '4.5',
                            time: '16:30',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A7站'),
                        /* 距離下個Posts的間隔 */
                        SizedBox(
                          height: 20,
                        ),
                        CarpoolPosts(
                            starRate: '4.3',
                            time: '15:00',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A8站'),
                        SizedBox(
                          height: 20,
                        ),
                        CarpoolPosts(
                            starRate: '4.3',
                            time: '15:00',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A8站'),
                        SizedBox(
                          height: 20,
                        ),
                        CarpoolPosts(
                            starRate: '4.3',
                            time: '15:00',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A8站'),
                        SizedBox(
                          height: 20,
                        ),
                        CarpoolPosts(
                            starRate: '4.3',
                            time: '15:00',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A8站'),
                        SizedBox(
                          height: 20,
                        ),
                        CarpoolPosts(
                            starRate: '4.3',
                            time: '15:00',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A8站'),
                        SizedBox(
                          height: 20,
                        ),
                        CarpoolPosts(
                            starRate: '4.3',
                            time: '15:00',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A8站'),
                        SizedBox(
                          height: 20,
                        ),
                        CarpoolPosts(
                            starRate: '4.3',
                            time: '15:00',
                            passenger: '1/3',
                            startStation: '明德樓',
                            endStation: 'A8站'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

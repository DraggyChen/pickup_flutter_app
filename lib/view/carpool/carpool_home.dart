import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                        /* 貼文類別篩選按鈕 */
                        SizedBox(
                          height: 8,
                        ),
                        ForumCategories(items: ["全部", "美食", "活動", "學校資訊"]),
                        SizedBox(
                          height: 8,
                        ),
                        /* 貼文 */
                        ForumPosts(
                          name: '李小明',
                          content: "This is an example content for the post...",
                        ),
                        SizedBox(height: 20,),
                        ForumPosts(
                          name: '王大美',
                          content: "This is an example content for the post...",
                        ),
                        SizedBox(height: 20,),
                        ForumPosts(
                          name: 'Draggy',
                          content: "This is an example content for the post...",
                        ),
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

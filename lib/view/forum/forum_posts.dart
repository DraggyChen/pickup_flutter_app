import 'package:flutter/material.dart';

import '../../utils/CircleImagePicker.dart';

class ForumPosts extends StatelessWidget {
  final String name;
  final String content;

  ForumPosts({required this.name, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,  // 設置背景色為白色
        borderRadius: BorderRadius.circular(20.0),  // 設置圓角
      ),

      child: Column(
        children: [
          // 第一部分
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,  // 這裡設定了垂直對齊方式
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleImagePicker(hint: "頭貼", diameter: 60),
                ),
                SizedBox(width: 15.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("長庚大學 學生", style: TextStyle(fontSize: 12.0, color: Colors.black)),
                      SizedBox(height: 3,),
                      Text("14小時前", style: TextStyle(fontSize: 12.0, color: Colors.black))
                    ],
                  ),
                ),
                Icon(Icons.favorite, color: Colors.red),
              ],
            ),
          ),
          // 第二部分
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,  // 這裡將文字強制置左
              child: Text(content),
            ),
          ),
          /* 分隔線 */
          Divider(color: Colors.grey.shade900, indent: 16.0, endIndent: 16.0,),
          // 第三部分
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 4.0),
                    Text("30")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 4.0),
                    Text("50")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 4.0),
                    Text("20")
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

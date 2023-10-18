import 'package:flutter/material.dart';

import '../../utils/CircleImagePicker.dart';

class CarpoolPosts extends StatelessWidget {
  final String name;
  final String content;

  CarpoolPosts({required this.name, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // 設置背景色為白色
        borderRadius: BorderRadius.circular(20.0), // 設置圓角
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start, // 這裡設定了垂直對齊方式
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleImagePicker(hint: "頭貼", diameter: 90),
                ),
                SizedBox(width: 15.0),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround, // 修改此處
                    children: [
                      /* 評分與公事包 */
                      Row(
                        children: [
                          Text(name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          Icon(
                            Icons.star_rate,
                            size: 30,
                          ),
                          Image.asset(
                            'assets/images/carpool/Briefcase.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),

                      /* 發車時間、目前乘客 */
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Time : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('16:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15)),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/images/carpool/Car.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('1/3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                        ],
                      ),
                      /* Start, End站 */
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Start : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('明德樓',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12)),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('End : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text('A7站',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                /* 右邊私訊按鈕 */
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent, // 設置為透明背景
                      elevation: 0, // 移除按鈕的陰影
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.zero, // 移除內部邊距以進一步縮小按鈕大小
                    ),
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/carpool/Message.png',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
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

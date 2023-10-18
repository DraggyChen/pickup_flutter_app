import 'package:flutter/material.dart';

import '../../utils/CircleImagePicker.dart';

class CarpoolPosts extends StatelessWidget {
  final String starRate;
  final String time;
  final String passenger;
  final String startStation;
  final String endStation;

  CarpoolPosts({
    required this.starRate,
    required this.time,
    required this.passenger,
    required this.startStation,
    required this.endStation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 130.0), // 更改200.0為您想要的最大高度
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
                    mainAxisAlignment: MainAxisAlignment.start, // 將子小部件對齊到開頭
                    mainAxisSize: MainAxisSize.min, // Column只佔據其子小部件所需的空間
                    children: [
                      /* 評分與公事包 */
                      Row(
                        children: [
                          Text(starRate,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Icon(
                            Icons.star_rate,
                            size: 25,
                          ),
                          Image.asset(
                            'assets/images/carpool/Briefcase.png',
                            width: 30,
                            height: 30,
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
                            child: Text(time,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15)),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/images/carpool/Car.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(passenger,
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
                            child: Text(startStation,
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
                            child: Text(endStation,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
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

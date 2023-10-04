import 'package:flutter/material.dart';

import '../../style/styles.dart';
import '../../utils/CircleImagePicker.dart';

class Settings_page extends StatefulWidget {
  @override
  _Settings_pageState createState() => _Settings_pageState();
}

class _Settings_pageState extends State<Settings_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: 16.0 + MediaQuery.of(context).padding.top,
            left: 30.0,
            right: 30.0,
            bottom: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              /* 上一步按鈕，修改資料按鈕 */
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        //返回畫面
                        Navigator.of(context).pop();
                      },
                    ),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.draw),
                      onPressed: () {
                        //返回畫面
                        Navigator.of(context).pop();
                      },
                    ),
                  )),
                ],
              ),
              SizedBox(height: 20),
              /* 使用者圖片、姓名、學校 */
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleImagePicker(hint: "使用者圖片", diameter: 120),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center, //將Align內全部物品置中
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //使Column內物品置左
                        children: [
                          Text(
                            "Name",
                            style: CustomStyles.TitleUsernameStyle_larger,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "長庚大學 學生",
                            style: CustomStyles.ButtonContentStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox(height: 20)),
                ],
              ),
              SizedBox(height: 20),
              /* 性別、電話 */
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.girl,
                        size: 50,
                      ),
                      SizedBox(width: 15), // 使用 SizedBox 來添加距離
                      Text(
                        "女性",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // 調整為所需的間距
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 40,
                      ),
                      SizedBox(width: 20), // 使用 SizedBox 來添加距離
                      Text(
                        "+886-9xx-xxx-xxx",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              /* 方案、身份 */
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          // 左邊不設置邊框
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 垂直居中
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "NT\$100.00",
                            style: TextStyle(fontSize: 25, color: Colors.blue),
                          ),
                          Text(
                            "1個月",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black),
                          // 右邊不設置邊框
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 垂直居中
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "目前身份",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                          Text(
                            "駕駛",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pickup/view/register/personal_data.dart';
import 'package:pickup/view/settings/settings_IconWithText.dart';
import 'package:pickup/view/settings/settings_rowBtn.dart';

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
                  //上一步按鈕
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
                  //修改資料
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.draw),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PersonalData()),
                        );
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
                  IconWithText(
                    imagePath: 'assets/images/settings/Gender_women.png',
                    text: '女性',
                    imageHeight: 45,
                    imageWidth: 45,
                  ),
                  SizedBox(height: 10),
                  IconWithText(
                    imagePath: 'assets/images/settings/Telephone.png',
                    text: '+886-9xx-xxx-xxx',
                    imageHeight: 25,
                    imageWidth: 25,
                  ),
                ],
              ),

              SizedBox(height: 20),
              /* 方案、身份 */
              Row(
                children: [
                  //左半部
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
                            style: TextStyle(fontSize: 25, color: Color(0xFF0D47A1)),
                          ),
                          Text(
                            "1個月",
                            style: TextStyle(fontSize: 20, color: Color(0xFF0D47A1)),
                          ),
                          SizedBox(height: 20),

                        ],
                      ),
                    ),
                  ),
                  //右半部
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
                            style: TextStyle(fontSize: 20, color: Color(0xFF0D47A1)),
                          ),
                          Text(
                            "駕駛",
                            style: TextStyle(fontSize: 20, color: Color(0xFF0D47A1)),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              /* 基本資料、歷史行程、法務說明、客服中心 */
              SettingsRow(
                  imagePath: 'assets/images/settings/PersonalData.png',
                  title: "基本資料",
                  onTap: () {
                    //基本資料 ui
                  }),
              SizedBox(height: 20),
              SettingsRow(
                  imagePath: 'assets/images/settings/History.png',
                  title: "歷史行程",
                  onTap: () {
                    //歷史行程 ui
                  }),
              SizedBox(height: 20),
              SettingsRow(
                  imagePath: 'assets/images/settings/LawDescription.png',
                  title: "法務說明",
                  onTap: () {
                    //法務說明 ui
                  }),
              SizedBox(height: 20),
              SettingsRow(
                  imagePath: 'assets/images/settings/ClientCentre.png',
                  title: "客服中心",
                  onTap: () {
                    //客服中心 ui
                  }),
              SizedBox(height: 30),
              /* 登出 */
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // 垂直居中
                  children: [
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.power_settings_new, size: 40, color: Colors.red),
                          SizedBox(width: 20),
                          Text(
                            "登出",
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

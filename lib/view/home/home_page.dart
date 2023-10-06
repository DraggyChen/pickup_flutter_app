import 'package:flutter/material.dart';
import 'package:pickup/style/styles.dart';
import 'package:pickup/utils/CircleImagePicker.dart';
import 'package:pickup/view/home/HomeStyles.dart';
import 'package:pickup/view/home/RowBlockInfo.dart';
import 'package:pickup/view/register/personal_data.dart';
import 'package:pickup/view/settings/settings_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 16.0 + MediaQuery.of(context).padding.top,
          left: 15.0,
          right: 15.0,
          bottom: 16.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 1),
              /* Settings Button */
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settings_page()),
                      );
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 35,
                    )),
              ),

              /* 頭貼、姓名、評分標題 */
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleImagePicker(hint: "頭貼", diameter: 120),
                  ),
                  SizedBox(width: 20),
                  // Expanded(
                  //     child: Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: CircleImagePicker(hint: "頭貼", diameter: 120),
                  // )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        // SizedBox(width: 1,),
                        Text(
                          "NAME",
                          style: CustomStyles.TitleUsernameStyle,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "4.5",
                          style: CustomStyles.TitleUsernameStyle,
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromRGBO(255, 223, 0, 1),
                        ),
                      ],
                    ),
                  )),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(width: 50),
                  )
                ],
              ),
              SizedBox(height: 20),

              /* 共乘行程 */
              RowBlockInfo(
                onPressed: () {},
                buttonText: "共乘行程",
                imagePath: 'assets/images/home/car.png',
                style: HomeStyles.car,
                isReverse: false,
              ),

              SizedBox(height: 20),

              /* 聊天室、論壇 */
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        style: CustomStyles.home_message,
                        onPressed: () {},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.message_outlined,
                                      size: 50,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                                //
                              ],
                            ),
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('聊天室',
                                        style: CustomStyles.topTitleStyle),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  )),
                  SizedBox(width: 20),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        style: CustomStyles.home_chat,
                        onPressed: () {},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.message_outlined,
                                      size: 50,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                                //
                              ],
                            ),
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('論壇',
                                        style: CustomStyles.topTitleStyle),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ))
                ],
              ),
              SizedBox(height: 20),

              /* 交通資訊 */
              RowBlockInfo(
                onPressed: () {},
                buttonText: "交通資訊",
                imagePath: 'assets/images/home/TrafficInfo.png',
                style: HomeStyles.traffics,
                isReverse: true,
              ),
              // ElevatedButton(
              //   style: CustomStyles.home_traffics,
              //   onPressed: () {
              //     // 切換頁面
              //   },
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Align(
              //           alignment: Alignment.center,
              //           child: Icon(
              //             Icons.bus_alert,
              //             size: 70,
              //             color: Colors.black,
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Align(
              //           alignment: Alignment.center,
              //           child: Text('交通資訊', style: CustomStyles.topTitleStyle),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

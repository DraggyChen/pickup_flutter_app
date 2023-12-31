import 'dart:io'; // 用於檢測操作系統

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/main.dart';
import 'package:pickup/view/forum/forum_home.dart';
import 'package:pickup/view/home/home_page.dart';
import 'package:pickup/view/navigation/navigation_button.dart';
import 'package:pickup/view/register/personal_data.dart';
import 'package:pickup/view/trafficInfo/traffic_home.dart';

import '../carpool/carpool_home.dart';
import '../map/TestMap.dart';

class Navigation_Bar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<Navigation_Bar> {
  int _selectedIndex = 2;
  PageController _pageController = PageController(initialPage: 2);

  /* Bar切換頁面Method */
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  //0XFFB3E5FC
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 根據當前選中的頁面索引來設定背景色
      backgroundColor: _selectedIndex == 1
          ? const Color(0xffffffeaed)
          : _selectedIndex == 4
              ? const Color(0XFFE3F2FD)
              : _selectedIndex == 0
                  ? Colors.amber.shade50
                  : Colors.white,


      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(), //禁止在頁面左右滑動切換畫面
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          CarpoolHome(),
          TrafficInfo(),
          // MyApp(),
          HomePage(),
          TestApp(),
          ForumHome(),
        ],
      ),
      bottomNavigationBar: Container(
        //上下左右間距
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          //因為只放icon不放label 不考慮 BottomNavigationBar
          child: BottomAppBar(
            elevation: 0, // 刪除陰影
            child: Container(
              // 添加這個Container
              height: Platform.isIOS ? 40 : 45,
              // 根據平台動態設定高度，使用import 'dart:io';
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  NavigationButton(
                    imagePath: 'assets/images/navbar/car.png',
                    imagePathSelected: 'assets/images/navbar/car_selected.png',
                    onPressed: () => _onItemTapped(0),
                    isSelected: _selectedIndex == 0, // Check here
                  ),
                  NavigationButton(
                    imagePath: 'assets/images/navbar/TrafficInfo.png',
                    imagePathSelected:
                        'assets/images/navbar/TrafficInfo_selected.png',
                    onPressed: () => _onItemTapped(1),
                    isSelected: _selectedIndex == 1, // Check here
                  ),
                  NavigationButton(
                    imagePath: 'assets/images/navbar/Home.png',
                    imagePathSelected: 'assets/images/navbar/Home_selected.png',
                    onPressed: () => _onItemTapped(2),
                    isSelected: _selectedIndex == 2, // Check here
                  ),
                  NavigationButton(
                    imagePath: 'assets/images/navbar/Message.png',
                    imagePathSelected: 'assets/images/navbar/Message.png',
                    onPressed: () => _onItemTapped(3),
                    isSelected: _selectedIndex == 3, // Check here
                  ),
                  NavigationButton(
                    imagePath: 'assets/images/navbar/StudentChat.png',
                    imagePathSelected:
                        'assets/images/navbar/StudentChat_selected.png',
                    onPressed: () => _onItemTapped(4),
                    isSelected: _selectedIndex == 4, // Check here
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

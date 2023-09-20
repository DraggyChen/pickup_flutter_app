import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 2;
  PageController _pageController = PageController(initialPage: 2);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Center(child: Text('Page 1 H')),
          Center(child: Text('Page 2 H')),
          Center(child: Text('Home Page H')),
          Center(child: Text('Page 4 H')),
          Center(child: Text('Page 5 H')),
        ],
      ),
      bottomNavigationBar: Container(
        //上下左右間距
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          //因為只放icon不放label 不考慮 BottomNavigationBar
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.car_rental),
                  color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.bus_alert),
                  color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.home),
                  color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  color: _selectedIndex == 3 ? Colors.black : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person_2),
                  color: _selectedIndex == 4 ? Colors.black : Colors.grey,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  },
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
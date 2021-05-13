import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ManagerPage.dart';
import 'ProfilePage.dart';
import 'StatisticsPage.dart';
import 'StopwatchPage.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

}

class RootPage extends StatefulWidget {
  RootPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RootPage createState() => _RootPage();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ctrlUrTimeInator",
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Color(0xffEFEEF3),//0x3bfaf6f3 better but cannot set other alpha in primary color
        accentColor: Color(0xffEFEEF3)
      ),
      home: RootPage(title: 'ctrlUrTimeInator'),
    );
  }
}

class _RootPage extends State<RootPage> {

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    ManagerPage(),
    StatisticsPage(),
    StopwatchPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined, size: 29, color: Color(0xff121212)),
            activeIcon: Icon(Icons.article, size: 29, color: Color(0xff121212)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined, size: 29, color: Color(0xff121212)),
            activeIcon: Icon(Icons.assessment, size: 29, color: Color(0xff121212)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_rounded, size: 29, color: Color(0xff121212)),
            activeIcon: Icon(Icons.play_circle_fill_rounded, size: 29, color: Color(0xff121212)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined, size: 29, color: Color(0xff121212)),
            activeIcon: Icon(Icons.account_box, size: 29, color: Color(0xff121212)),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'dart:ui';

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
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
    return CupertinoApp(
      title: "ctrlUrTimeInator",
      home: RootPage(title: 'ctrlUrTimeInator'),
      theme: CupertinoThemeData(
        primaryColor: Color(0xfffafafa),
        primaryContrastingColor: Color(0xfffafafa),
        barBackgroundColor: Color(0xfffafafa),
        textTheme: CupertinoTextThemeData(),
        scaffoldBackgroundColor: Color(0xfffafafa)
      ),
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
      extendBody: true,
      body: _children[_currentIndex],
      bottomNavigationBar: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: Opacity(
            opacity: 1,
            child: CupertinoTabBar(
              backgroundColor: Color(0x125E5D5D),
              inactiveColor: Color(0x125E5D5D),
              activeColor: Color(0x125E5D5D),

              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.square_list, size: 24, color: Color.fromRGBO(174, 174, 178, 1.0)),
                  activeIcon: Icon(CupertinoIcons.square_list, size: 24, color: Color.fromRGBO(0, 122, 255, 1.0)),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chart_pie, size: 24, color: Color.fromRGBO(174, 174, 178, 1.0)),
                  activeIcon: Icon(CupertinoIcons.chart_pie, size: 24, color: Color.fromRGBO(0, 122, 255, 1.0)),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.stopwatch, size: 24, color: Color.fromRGBO(174, 174, 178, 1.0)),
                  activeIcon: Icon(CupertinoIcons.stopwatch, size: 24, color: Color.fromRGBO(0, 122, 255, 1.0)),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person, size: 24, color: Color.fromRGBO(174, 174, 178, 1.0)),
                  activeIcon: Icon(CupertinoIcons.person, size: 24, color: Color.fromRGBO(0, 122, 255, 1.0)),
                ),
              ],
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

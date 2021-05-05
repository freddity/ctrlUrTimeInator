import 'package:flutter/material.dart';

import 'ManagerPage.dart';
import 'ProfilePage.dart';
import 'StatisticsPage.dart';
import 'StopwatchPage.dart';

void main() {
  runApp(MyApp());
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
      title: "Is's title man",
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: RootPage(title: 'Stopwatchinator'),
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined, size: 29, color: Color.fromRGBO(71, 71, 75, 1.0)),
            activeIcon: Icon(Icons.article, size: 29, color: Color.fromRGBO(35, 38, 43, 1.0)),
            label: 'Management',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined, size: 29, color: Color.fromRGBO(71, 71, 75, 1.0)),
            activeIcon: Icon(Icons.assessment, size: 29, color: Color.fromRGBO(35, 38, 43, 1.0)),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_rounded, size: 29, color: Color.fromRGBO(71, 71, 75, 1.0)),
            activeIcon: Icon(Icons.play_circle_fill_rounded, size: 29, color: Color.fromRGBO(35, 38, 43, 1.0)),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined, size: 29, color: Color.fromRGBO(71, 71, 75, 1.0)),
            activeIcon: Icon(Icons.account_box, size: 29, color: Color.fromRGBO(35, 38, 43, 1.0)),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

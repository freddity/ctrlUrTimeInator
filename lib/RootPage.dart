import 'package:flutter/material.dart';

import 'ManagerPage.dart';
import 'ProfilePage.dart';
import 'StatisticsPage.dart';
import 'StopwatchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ctrlUrTimeInator",
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: RootPage(title: 'ctrlUrTimeInator'),
    );
  }
}

class RootPage extends StatefulWidget {
  RootPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RootPage createState() => _RootPage();
}


class _Page {
  _Page({this.widget});
  final StatefulWidget widget;
}

class _RootPage extends State<RootPage> with SingleTickerProviderStateMixin {

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _controller.animateTo(index);
    });
  }

  final List<_Page> _allPages = [
    _Page(widget: ManagerPage()),
    _Page(widget: StatisticsPage()),
    _Page(widget: StopwatchPage()),
    _Page(widget: ProfilePage())
  ];

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: _allPages.length);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        children: _allPages.map<Widget>((_Page page) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Container(
                key: ObjectKey(page.widget),
                padding: const EdgeInsets.all(12.0),
                child: page.widget,
              ),
            );
          }
        ).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined, size: 29, color: Colors.black87),
            activeIcon: Icon(Icons.article, size: 29, color: Colors.black),
            label: 'Management',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined, size: 29, color: Colors.black87),
            activeIcon: Icon(Icons.assessment, size: 29, color: Colors.black),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_rounded, size: 29, color: Colors.black87),
            activeIcon: Icon(Icons.play_circle_fill_rounded, size: 29, color: Colors.black),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined, size: 29, color: Colors.black87),
            activeIcon: Icon(Icons.account_box, size: 29, color: Colors.black),
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

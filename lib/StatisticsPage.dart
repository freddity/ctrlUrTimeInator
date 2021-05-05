import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {

  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: new Text("Statistics page"),
      ),
      body: new Center(
        child: new Text("It's statistics page"),
      ),
    );
  }

}
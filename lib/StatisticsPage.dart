import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {

  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: Text("Statistics", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text("It's statistics page"),
      ),
    );
  }
}
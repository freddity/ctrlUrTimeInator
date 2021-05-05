import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {

  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: new Text("Stopwatch page"),
      ),
      body: new Center(
        child: new Text("It's stopwatch page"),
      ),
    );
  }

}
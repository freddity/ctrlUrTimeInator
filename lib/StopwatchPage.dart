import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {

  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: Text("Stopwatch", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text("It's stopwatch page"),
      ),
    );
  }
}
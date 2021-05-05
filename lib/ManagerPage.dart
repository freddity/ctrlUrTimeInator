import 'package:flutter/material.dart';

class ManagerPage extends StatefulWidget {

  @override
  _ManagerPageState createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Manager page"),
      ),
      body: new Center(
        child: new Text("It's manager page"),
      ),
    );
  }

}
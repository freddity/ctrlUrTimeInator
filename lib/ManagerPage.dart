import 'package:flutter/material.dart';

import 'RootPage.dart';

class ManagerPage extends StatefulWidget {

  @override
  _ManagerPageState createState() => _ManagerPageState();

  @override
  StatelessWidget get widget => throw UnimplementedError();
}

class _ManagerPageState extends State<ManagerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: Text("Manager", style: TextStyle(color: Colors.black))
      ),
      body: Center(
        child: Text("It's manager page"),
      ),
    );
  }
}
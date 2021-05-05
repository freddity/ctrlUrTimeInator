import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: new Text("Profile page"),
      ),
      body: new Center(
        child: new Text("It's profile page"),
      ),
    );
  }

}
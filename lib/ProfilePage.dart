import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: Text("Profile", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff3A3A3A),
            fontSize: 17.5,
            letterSpacing: 0.1)
        ),
      ),
      body: Center(
        child: Text("It's profile page"),
      ),
    );
  }
}
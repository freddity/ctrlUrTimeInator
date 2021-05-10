import 'package:flutter/material.dart';

class ManagerPage extends StatefulWidget {

  @override
  _ManagerPageState createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text("Manager", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff3A3A3A),
            fontSize: 17.5,
            letterSpacing: 0.1)
        )
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top:40),
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                /*focusColor: ,*/
                leading: Icon(Icons.edit_outlined),
                title: Text("Drawing", style: TextStyle(color: Color(0xff3A3A3A))),
                trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
                tileColor: Color(0xFFFDFDFB),
              ),
              ListTile(
                leading: Icon(Icons.gamepad_outlined),
                title: Text("Gaming"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
                tileColor: Color(0xFFFDFDFB),
              ),
              ListTile(
                leading: Icon(Icons.school_outlined),
                title: Text("School"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
                tileColor: Color(0xFFFDFDFB),
              ),
              ListTile(
                leading: Icon(Icons.work_outline),
                title: Text("Work"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
                tileColor: Color(0xFFFDFDFB),
              ),
              ListTile(
                leading: Icon(Icons.run_circle_outlined),
                title: Text("Running"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
                tileColor: Color(0xFFFDFDFB),
              )
            ]
          ).toList()
        ),
        //todo list item adding button
      ),
    );
  }
}
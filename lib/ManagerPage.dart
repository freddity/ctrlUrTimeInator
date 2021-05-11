import 'package:flutter/material.dart';

class ManagerPage extends StatefulWidget {

  @override
  _ManagerPageState createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {

  List<Icon> _leading = [
    Icon(Icons.edit_outlined, size: 20),
    Icon(Icons.gamepad_outlined, size: 20),
    Icon(Icons.school_outlined, size: 20),
    Icon(Icons.work_outline, size: 20),
    Icon(Icons.run_circle_outlined, size: 20)
  ];

  List<Text> _title = [
    Text("Drawing", style: TextStyle(color: Color(0xff3A3A3A)), textAlign: TextAlign.center),
    Text("Gaming", style: TextStyle(color: Color(0xff3A3A3A)), textAlign: TextAlign.center),
    Text("School", style: TextStyle(color: Color(0xff3A3A3A)), textAlign: TextAlign.center),
    Text("School", style: TextStyle(color: Color(0xff3A3A3A)), textAlign: TextAlign.center),
    Text("Work", style: TextStyle(color: Color(0xff3A3A3A)), textAlign: TextAlign.center),
    Text("Running", style: TextStyle(color: Color(0xff3A3A3A)), textAlign: TextAlign.center)
  ];

  Icon _trailing = Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb));
  Color _color = Color(0xFFFDFDFB);

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
        child: ListView.separated(
          itemCount: _leading.length,
          padding: EdgeInsets.only(top:40),
          separatorBuilder: (context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) =>
            ListTile(
              leading: _leading[index],
              title: _title[index],
              trailing: _trailing,
              tileColor: _color,
            ),
        ),
        //todo list item adding button
      ),
    );
  }
}

/*
ListTile(
leading: Icon(Icons.edit_outlined, size: 20),
title: Text("Drawing", style: TextStyle(color: Color(0xff3A3A3A))),
trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
tileColor: Color(0xFFFDFDFB),
),
ListTile(
leading: Icon(Icons.gamepad_outlined, size: 20),
title: Text("Gaming"),
trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
tileColor: Color(0xFFFDFDFB),
),
ListTile(
leading: Icon(Icons.school_outlined, size: 20),
title: Text("School"),
trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
tileColor: Color(0xFFFDFDFB),
);
ListTile(
leading: Icon(Icons.work_outline, size: 20),
title: Text("Work"),
trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
tileColor: Color(0xFFFDFDFB),
);
ListTile(
leading: Icon(Icons.run_circle_outlined, size: 20),
title: Text("Running"),
trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb)),
tileColor: Color(0xFFFDFDFB),
);*/

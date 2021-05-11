import 'package:flutter/material.dart';

import 'RootPage.dart';

class ManagerPage extends StatefulWidget {

  @override
  _ManagerPageState createState() => _ManagerPageState();

  @override
  StatelessWidget get widget => throw UnimplementedError();
}

class _ManagerPageState extends State<ManagerPage> {

  List<Icon> _leading = [
    Icon(Icons.edit_outlined, size: 16, color: Color(0xff808080)),
    Icon(Icons.gamepad_outlined, size: 16, color: Color(0xff808080)),
    Icon(Icons.school_outlined, size: 16, color: Color(0xff808080)),
    Icon(Icons.work_outline, size: 16, color: Color(0xff808080)),
    Icon(Icons.run_circle_outlined, size: 16, color: Color(0xff808080))
  ];

  List<Text> _title = [
    Text("Drawing", style: TextStyle(color: Color(0xff252525)), textAlign: TextAlign.center),
    Text("Gaming", style: TextStyle(color: Color(0xff252525)), textAlign: TextAlign.center),
    Text("School", style: TextStyle(color: Color(0xff252525)), textAlign: TextAlign.center),
    Text("Work", style: TextStyle(color: Color(0xff252525)), textAlign: TextAlign.center),
    Text("Running", style: TextStyle(color: Color(0xff252525)), textAlign: TextAlign.center)
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
      body: ListView.separated(
        itemCount: _leading.length,
        padding: EdgeInsets.only(top:40),
        separatorBuilder: (context, int index) => Divider(
          height: 1,
          indent: 50,
        ),
        itemBuilder: (BuildContext context, int index) =>
            SizedBox(
              height: 38,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(bottom: 15.0, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [_leading[index]],
                  ),
                ),
                title: Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [_title[index]],
                  ),
                ),
                trailing: Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [_trailing],
                  )
                ),
                tileColor: _color,
            ),
           )
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

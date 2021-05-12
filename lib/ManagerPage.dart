import 'package:flutter/material.dart';

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
    Text("Drawing",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5),
        textAlign: TextAlign.center),
    Text("Gaming",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5),
        textAlign: TextAlign.center),
    Text("School",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5),
        textAlign: TextAlign.center),
    Text("Work",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5),
        textAlign: TextAlign.center),
    Text("Running",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5),
        textAlign: TextAlign.center)
  ];

  Icon _trailing =
      Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb));
  Color _color = Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEEF3),
      appBar: AppBar(
        backgroundColor: Color(0xffEFEEF3),
        elevation: 1,
        centerTitle: true,
        title: Text("Manager",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff3A3A3A),
                fontSize: 17.5,
                letterSpacing: 0.1)),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 65, left: 27),
              alignment: Alignment.centerLeft,
              child: Text('ACTIVITIES (${_leading.length})',
                  style: TextStyle(color: Color(0xff8C8C8A), fontSize: 11.5))),
          Container(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _leading.length + 2,
                padding: EdgeInsets.only(top: 7),
                separatorBuilder: (context, index) =>
                    index == 0 || index == _leading.length
                        ? Divider(height: 0.5, indent: 0)
                        : Divider(height: 0.5, indent: 50),
                itemBuilder: (context, index) {
                  if (index == 0 || index == _leading.length + 1) {
                    return Container();
                  }

                  return SizedBox(
                    height: 38,
                    child: ListTile(
                      leading: Container(
                        margin: EdgeInsets.only(bottom: 15.0, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [_leading[index - 1]],
                        ),
                      ),
                      title: Container(
                        margin: EdgeInsets.only(bottom: 15.0),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [_title[index - 1]],
                        ),
                      ),
                      trailing: Container(
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [_trailing],
                          )),
                      tileColor: _color,
                    ),
                  );
                }),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: 285),
        child: Container(
          width: 38,
          height: 38,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Color.fromRGBO(0, 122, 255, 1.0),
            child: Icon(Icons.add_rounded, size: 25, color: Color.fromRGBO(255, 255, 255, 1.0)),
          ),
        )
      )
    );
  }
}

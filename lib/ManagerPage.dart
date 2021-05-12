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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
            automaticallyImplyLeading: false,
            // hides leading widget
            flexibleSpace: Container(
              padding: EdgeInsets.only(top: 70, left: 20),
              child: Text("Manager",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3A3A3A),
                      fontSize: 34,
                      letterSpacing: 0.1)),
            ),
            backgroundColor: Color(0xffEFEEF3),
            elevation: 0,
            centerTitle: false),
      ),
      body: Column(children: [
        Container(
            padding: EdgeInsets.only(left: 27, bottom: 7),
            alignment: Alignment.centerLeft,
            child: Text('ACTIVITIES (${_leading.length})',
                style: TextStyle(color: Color(0xff8C8C8A), fontSize: 11.5))),
        Expanded(
          child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(bottom: 15.0, left: 10, right: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 8,
                                    offset: Offset(0, 15),
                                    color: Color(0xffE9E8EB).withOpacity(0.6),
                                    spreadRadius: -9)
                              ]),

                          child: ListTile(
                            leading: const Icon(Icons.album),
                            title: Text('The  is having:'),
                            subtitle: Text(' Votes.'),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                    ),
                        ),
                  ]),
                );
              }),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 40,
        height: 40,
        child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Color.fromRGBO(0, 122, 255, 1.0),
            child: Icon(Icons.add_rounded,
                size: 25, color: Color.fromRGBO(255, 255, 255, 1.0))),
      ),
    );
  }
}

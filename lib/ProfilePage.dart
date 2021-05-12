import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
                child: Text("Profile",
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
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.only(left: 27),
                alignment: Alignment.centerLeft,
                child: Text('ACTIVITIES (${_leading.length})',
                    style:
                    TextStyle(color: Color(0xff8C8C8A), fontSize: 11.5))),
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
    );
  }
}
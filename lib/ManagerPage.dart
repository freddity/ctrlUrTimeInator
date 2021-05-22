import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManagerPage extends StatefulWidget {
  @override
  _ManagerPageState createState() => _ManagerPageState();

  @override
  StatelessWidget get widget => throw UnimplementedError();
}

class _ManagerPageState extends State<ManagerPage> {
  List<Icon> _leading = [
    Icon(Icons.edit_outlined, size: 20, color: Color(0xff808080)),
    Icon(Icons.gamepad_outlined, size: 20, color: Color(0xff808080)),
    Icon(Icons.school_outlined, size: 20, color: Color(0xff808080)),
    Icon(Icons.work_outline, size: 20, color: Color(0xff808080)),
    Icon(Icons.run_circle_outlined, size: 20, color: Color(0xff808080)),
    Icon(Icons.language, size: 20, color: Color(0xff808080)),
    Icon(Icons.kitchen_outlined, size: 20, color: Color(0xff808080)),
    Icon(Icons.pool_outlined, size: 20, color: Color(0xff808080)),
    Icon(Icons.people_outlined, size: 20, color: Color(0xff808080)),
    Icon(Icons.directions_bike_outlined, size: 20, color: Color(0xff808080))
  ];

  List<Text> _title = [
    Text("Drawing", style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Gaming", style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("School", style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Work", style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Running", style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Learning Norwegian",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Cooking", style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Swimming",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Meets with friends",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
    Text("Bike riding",
        style: TextStyle(color: Color(0xff252525), fontSize: 14.5)),
  ];

  Icon _trailing =
      Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb));
  Color _color = Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification) {
            print(scrollNotification.metrics.extentBefore);
          }
          return null;
        },
        child: CustomScrollView(

          slivers: [
            SliverPersistentHeader(
              delegate: CustomCupertinoSliverNavigationBar(),
              pinned: true,
              floating: false,
            ),
            SliverPadding(padding: EdgeInsets.only(top: 20)),
            SliverToBoxAdapter(
              child: Text('Manager'),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    margin: EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child:
                        Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  offset: Offset(0, 0),
                                  color: Color(0xffE9E8EB).withOpacity(0.3),
                                  spreadRadius: -9)
                            ]),
                        child: ListTile(
                          leading: Container(
                            child: _leading[index],
                            alignment: Alignment.centerLeft,
                            width: 10,
                          ),
                          trailing: _trailing,
                          title: Container(
                            alignment: Alignment.centerLeft,
                            child: _title[index],
                          ),
                          subtitle: Text('some colorful statistics idk'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      ),
                    ]),
                  );
                },
                childCount: 10,
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 125))
          ],
        ),
      ),
    );
  }
}

class CustomCupertinoSliverNavigationBar
    extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CupertinoNavigationBar(
      trailing: IconButton(
        icon: Icon(
          CupertinoIcons.add,
          color: Colors.black,
          size: 25.0,
        ),
      ),
      middle: Text(
        'Manager',
        style: TextStyle(
          fontSize: 15.5,
          color: Colors.grey
        ),
      ),
    );
  }

  @override
  double get maxExtent => 70.0;

  @override
  double get minExtent => 70.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    if (oldDelegate.minExtent != this.minExtent ||
        oldDelegate.maxExtent != this.maxExtent ||
        oldDelegate.snapConfiguration != this.snapConfiguration) {
      return true;
    }
    return true; //temporary, change to false
  }
}

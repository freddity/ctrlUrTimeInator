import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManagerPage extends StatefulWidget {

  @override
  _ManagerPageState createState() {
    managerPageState = _ManagerPageState();
    return managerPageState;
  }

    @override
    StatelessWidget get widget => throw UnimplementedError();
}

_ManagerPageState managerPageState;
double scrollValue = 0;

class _ManagerPageState extends State<ManagerPage> with TickerProviderStateMixin {

  @override
  void initState() {
    managerPageState = this;
  }

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
    managerPageState = this;
    return Scaffold(
      body: NotificationListener(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification) {
            print(scrollNotification.metrics.extentBefore);
            scrollValue = scrollNotification.metrics.extentBefore;
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
            SliverPadding(padding: EdgeInsets.only(top: 11)),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                child: Text("Manager",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(28, 28, 30, 1.0),
                        letterSpacing: 0.1)),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 20)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.12),
                          spreadRadius: 0,
                          blurRadius: 7,
                          //offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      Container(
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
            SliverPadding(padding: EdgeInsets.only(top: 77))
          ],
        ),
      ),
    );
  }
}

class CustomCupertinoSliverNavigationBar extends SliverPersistentHeaderDelegate {

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: managerPageState,
    )..addListener(() {

    });

    final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    return CupertinoNavigationBar(
        backgroundColor: Color(0x98fafafa),
        border: scrollValue <= 50 ? null : Border(bottom: BorderSide(
            width: 0.5, color: Color.fromRGBO(142, 142, 147, 0.12))),
        leading: Container(
          padding: EdgeInsets.only(top: 11),
          child: Text('Edit', style: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(0, 122, 255, 1.0)
          )),
        ),
      middle: new AnimatedCrossFade(
        firstChild: Text(
          'Manager',
          style: TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(28, 28, 30, 0),
          ),
        ),
        secondChild: Text(
          'Manager',
          style: TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(28, 28, 30, 1),
          ),
        ),
        crossFadeState: scrollValue <= 50 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: Duration(milliseconds: 120)),

        trailing: Icon(
          CupertinoIcons.add,
          color: Color.fromRGBO(0, 122, 255, 1.0),
          size: 27.0,
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

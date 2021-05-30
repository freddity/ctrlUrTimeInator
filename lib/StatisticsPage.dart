import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/StatisticsOneDay.dart';
import 'package:flutter_app/StatisticsSevenDay.dart';
import 'package:flutter_app/StatisticsThirtyDay.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() {
    _statisticsPageState = _StatisticsPageState();
    return _statisticsPageState;
  }
}

_StatisticsPageState _statisticsPageState;
double scrollValue = 0;

class _StatisticsPageState extends State<StatisticsPage>
    with TickerProviderStateMixin {
  int _choiceCurrent = 0;

  final _choiceTypes = <int, Widget>{
    0: Text('Daily'),
    1: Text('Weekly'),
    2: Text('Monthly'),
  };

  final _choiceContent = <Widget>[
    StatisticsOneDay(),
    StatisticsSevenDay(),
    StatisticsThirtyDay()
  ];

  var _customScrollView = CustomScrollView();

  @override
  Widget build(BuildContext context) {
    _statisticsPageState = this;

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
                child: Text("Statistics",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(28, 28, 30, 1.0),
                        letterSpacing: 0.1)),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 20)),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: CupertinoSlidingSegmentedControl(
                  padding: EdgeInsets.only(top: 1.5, bottom: 1.5),
                  thumbColor: Color(0xffffffff),
                  backgroundColor: Color(0xffEBEBEB),
                  children: _choiceTypes,
                  onValueChanged: (value) {
                    setState(() {
                      _choiceCurrent = value;
                    });
                  },
                  groupValue: _choiceCurrent,
                ),
              )
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 220,
                child: _choiceContent[_choiceCurrent],
              ),
            ),

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
    final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: _statisticsPageState,
    )..addListener(() {});

    final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    return CupertinoNavigationBar(
      backgroundColor: Color(0x98fafafa),
      border: scrollValue <= 50
          ? null
          : Border(
              bottom: BorderSide(
                  width: 0.5, color: Color.fromRGBO(142, 142, 147, 0.12))),
      /*leading: Container(
        padding: EdgeInsets.only(top: 11),
        child: Text('Edit', style: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(0, 122, 255, 1.0)
        )),
      ),*/
      middle: new AnimatedCrossFade(
          firstChild: Text(
            'Statistics',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromRGBO(28, 28, 30, 0),
            ),
          ),
          secondChild: Text(
            'Statistics',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromRGBO(28, 28, 30, 1),
            ),
          ),
          crossFadeState: scrollValue <= 50
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: Duration(milliseconds: 120)),

      /*trailing: IconButton(
        onPressed: () {print('CLICKED');},
        padding: new EdgeInsets.only(left: 30, bottom: 5),
        icon: Icon(
          CupertinoIcons.add,
          color: Color.fromRGBO(0, 122, 255, 1.0),
          size: 27.0,
        ),
      ),*/
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

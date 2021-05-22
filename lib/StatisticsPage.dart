import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/StatisticsOneDay.dart';
import 'package:flutter_app/StatisticsSevenDay.dart';
import 'package:flutter_app/StatisticsThirtyDay.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {

  int _choiceCurrent = 0;

  final _choiceTypes = <int, Widget> {
    0: Text('1 day'),
    1: Text('7 days'),
    2: Text('30 days'),
  };

  final _choiceContent = <Widget> [
    StatisticsOneDay(),
    StatisticsSevenDay(),
    StatisticsThirtyDay()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          border: null,
          //backgroundColor: Color(0x125E5D5D),
          brightness: Brightness.light,
          trailing: IconButton(
            //onPressed: ,
            icon: Container(
              margin: EdgeInsets.only(top: 0),
              child: Icon(
                CupertinoIcons.ellipsis_circle,
                color: Color.fromRGBO(0, 122, 255, 1.0),
                size: 24,
              ),
            ),
          ),
          largeTitle: Text("Statistics",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff040406),
                  letterSpacing: 0.1)),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 20)),
        SliverToBoxAdapter(
          child: CupertinoSegmentedControl<int>(
            children: _choiceTypes,
            onValueChanged: (value) {
              setState(() {
                _choiceCurrent = value;
              });
            },
            groupValue: _choiceCurrent,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
              height: 300,
              child: _choiceContent[_choiceCurrent],
              color: Colors.red,
          ),
        )
        /*SliverToBoxAdapter(
          child: ,
        ),*/
      ],
    ));
  }
}

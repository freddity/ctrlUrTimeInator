import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  int _currentValue;

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
          child: CupertinoSegmentedControl(
            children: <int, Widget>{
              0: Text("One"),
              1: Text("Two"),
              2: Text("Three"),
            },
            onValueChanged: (newValue) {
              _currentValue = newValue;
            },
            groupValue: _currentValue,
          ),
        ),
        SliverToBoxAdapter(
          child: SfCircularChart(
            tooltipBehavior: TooltipBehavior(enable: true),
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 125))
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsThirtyDay extends StatefulWidget {
  @override
  _StatisticsThirtyDay createState() => _StatisticsThirtyDay();
}

class _StatisticsThirtyDay extends State<StatisticsThirtyDay> {
  @override
  Widget build(BuildContext context) {
    double _percentsPoints = 0;

    return Scaffold(
        body: Container(
          height: 220,
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
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
          child: SfCircularChart(
            margin: EdgeInsets.zero,
            centerY: '104',
            series: [
              DoughnutSeries<ChartData, String>(
                dataSource: getChartData(),
                xValueMapper: (ChartData data, _) => data.title,
                yValueMapper: (ChartData data, _) => data.value,
                pointColorMapper: (ChartData data, _) => data.color,
                dataLabelMapper: (ChartData data, _) {
                  _percentsPoints += data.value;

                  String _percentsFirst = '${data.value}% ${data.title}';
                  String _nameFirst = '${data.title} ${data.value}%';

                  print(_percentsPoints);
                  if (_percentsPoints > 50) {
                    if (_percentsPoints - (data.value / 2) < 50) {
                      return _percentsFirst;
                    } else {
                      return _nameFirst;
                    }
                  } else {
                    return _percentsFirst;
                  }
                },
                dataLabelSettings: DataLabelSettings(
                  textStyle:
                  TextStyle(color: Color.fromRGBO(44, 44, 46, 1), fontSize: 10),
                  isVisible: true,
                  labelPosition: ChartDataLabelPosition.outside,
                  showCumulativeValues: true,
                  connectorLineSettings: ConnectorLineSettings(
                      width: 0.5,
                      color: Color(0x8a7f7f7f),
                      type: ConnectorType.curve),
                ),
                enableTooltip: true,
                enableSmartLabels: true,
                explode: false,
                animationDuration: 350,
                radius: '55%',

                //groupMode: CircularChartGroupMode.point, //will be useful while I'll have more data
                //groupTo: 4,

                selectionBehavior: SelectionBehavior(
                    enable: true,
                    unselectedOpacity: 0.3,
                    unselectedBorderWidth: 0.1,
                    unselectedBorderColor: Colors.black),
              )
            ],
          ),
        )
    );
  }
}

List<ChartData> getChartData() {
  final List<ChartData> chartData = [
    ChartData('Drawing', 13, Color.fromRGBO(49, 152, 252, 1.0)),
    ChartData('Gaming', 24, Color.fromRGBO(58, 206, 94, 1.0)),
    ChartData('School', 26, Color.fromRGBO(117, 115, 231, 1.0)),
    ChartData('Work', 12, Color.fromRGBO(250, 173, 57, 1.0)),
    ChartData('Running', 0, Color.fromRGBO(248, 88, 120, 1.0)),
    ChartData('Norwegian', 25, Color.fromRGBO(196, 111, 238, 1.0))
  ];
  return chartData;
}

class ChartData {
  ChartData(this.title, this.value, this.color);

  final String title;
  final double value;
  final Color color;
}

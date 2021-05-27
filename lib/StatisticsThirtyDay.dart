import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsThirtyDay extends StatefulWidget {
  @override
  _StatisticsThirtyDay createState() => _StatisticsThirtyDay();
}

class _StatisticsThirtyDay extends State<StatisticsThirtyDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCircularChart(
        margin: EdgeInsets.zero,
        centerY: '120',
        series: <DoughnutSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: getChartData(),
            xValueMapper: (ChartData data, _) => data.title,
            yValueMapper: (ChartData data, _) => data.value,
            pointColorMapper: (ChartData data, _) => data.color,
            dataLabelMapper: (ChartData data, _) => data.title,
            dataLabelSettings: DataLabelSettings(
              textStyle: TextStyle(color: Color.fromRGBO(44, 44, 46, 1), fontSize: 10),
              isVisible: true,
              labelPosition: ChartDataLabelPosition.outside,
              showCumulativeValues: true,
              connectorLineSettings: ConnectorLineSettings(
                  width: 0.5,
                  color: Color(0x8a7f7f7f),
                  type: ConnectorType.curve
              ),
            ),
            enableTooltip: true,
            enableSmartLabels: true,
            explode: true,
            animationDuration: 350,
            radius: '70%',
            selectionBehavior: SelectionBehavior(
                enable: true,
                unselectedOpacity: 0.3,
                unselectedBorderWidth: 0.1,
                unselectedBorderColor: Colors.black
            ),
          )
        ],
      ),
    );
  }
}

List<ChartData> getChartData() {
  final List<ChartData> chartData = [
    ChartData('Drawing', 50, Color.fromRGBO(49, 152, 252, 1.0)),
    ChartData('Gaming', 45, Color.fromRGBO(58, 206, 94, 1.0)),
    ChartData('School', 54, Color.fromRGBO(117, 115, 231, 1.0)),
    ChartData('Work', 7, Color.fromRGBO(250, 173, 57, 1.0)),
    ChartData('Running', 78, Color.fromRGBO(248, 88, 120, 1.0)),
    ChartData('Learning Norwegian', 14, Color.fromRGBO(196, 111, 238, 1.0))
  ];
  return chartData;
}

class ChartData {
  ChartData(this.title, this.value, this.color);

  final String title;
  final int value;
  final Color color;
}
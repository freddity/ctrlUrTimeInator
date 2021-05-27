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
        series: <CircularSeries>[
          PieSeries<ChartData, String>(
            dataSource: getChartData(),
            xValueMapper: (ChartData data, _) => data.title,
            yValueMapper: (ChartData data, _) => data.value,
            dataLabelMapper: (ChartData data, _) => data.title,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              labelPosition: ChartDataLabelPosition.outside,
              showCumulativeValues: true,
            ),
            enableTooltip: true,
            enableSmartLabels: true,
            explode: true,
            animationDuration: 350,
            radius: '60%',
          )
        ],
      ),
    );
  }

  List<ChartData> getChartData() {
    final List<ChartData> chartData = [
      ChartData('Oceania', 50),
      ChartData('Africa', 45),
      ChartData('S America', 54),
      ChartData('Europe', 7),
      ChartData('N America', 78),
      ChartData('Asia', 14)
    ];
    return chartData;
  }
}

class ChartData {
  ChartData(this.title, this.value);

  final String title;
  final int value;
}

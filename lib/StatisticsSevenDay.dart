import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsSevenDay extends StatefulWidget {
  @override
  _StatisticsSevenDay createState() => _StatisticsSevenDay();
}

class _StatisticsSevenDay extends State<StatisticsSevenDay> {
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
      ChartData('Oceania', 5),
      ChartData('Africa', 200),
      ChartData('S America', 500),
      ChartData('Europe', 40),
      ChartData('N America', 50),
      ChartData('Asia', 70)
    ];
    return chartData;
  }
}

class ChartData {
  ChartData(this.title, this.value);

  final String title;
  final int value;
}
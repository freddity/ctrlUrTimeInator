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
      body: Column(children: [
        SfCircularChart(
          centerY: '120',
          series: <CircularSeries>[
            PieSeries<GDPData, String>(
              dataSource: getChartData(),
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelMapper: (GDPData data, _) => data.continent,
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
        )
      ]),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Oceania', 50),
      GDPData('Africa', 45),
      GDPData('S America', 54),
      GDPData('Europe', 7),
      GDPData('N America', 78),
      GDPData('Asia', 14)
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);

  final String continent;
  final int gdp;
}

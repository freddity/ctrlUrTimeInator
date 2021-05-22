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
      GDPData('Oceania', 5),
      GDPData('Africa', 200),
      GDPData('S America', 500),
      GDPData('Europe', 40),
      GDPData('N America', 50),
      GDPData('Asia', 70)
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);

  final String continent;
  final int gdp;
}

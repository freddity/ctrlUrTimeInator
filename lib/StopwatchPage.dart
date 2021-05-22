import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StopwatchPage extends StatefulWidget {

  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SfCircularChart(
          series: <CircularSeries>[
            PieSeries<GDPData, String>(
              dataSource: getChartData(),
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelSettings: DataLabelSettings(
                isVisible: true, labelPosition:
                ChartDataLabelPosition.outside
              ),
              enableTooltip: true,
              enableSmartLabels: true,
              explode: true,
            )
          ],
      ),
    ));
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

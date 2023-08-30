import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.month, this.sales);

  final String month;
  final int sales;
}

class ValueChart extends StatelessWidget {
  final List<SalesData> data = [
    SalesData('Jan', -3),
    SalesData('Feb', -1),
    SalesData('Mar', -2),
    SalesData('Apr', -5),
    SalesData('May', -10),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            dataSource: data,
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.sales,
          ),
        ],
      ),
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.month, this.sales);

  final String month;
  final int sales;
}

class ValueChart extends StatelessWidget {
  ValueChart();

  @override
  Widget build(BuildContext context) {
    final List<SalesData> data = [
      SalesData('Jan', -3),
      SalesData('Feb', -1),
      SalesData('Mar', -2),
      SalesData('Apr', -5),
      SalesData('May', -10),
    ];
    final List<SalesData> data1 = [
      SalesData('Jan', 2),
      SalesData('Feb', 1),
      SalesData('Mar', 3),
      SalesData('Apr', 5),
    ];
    final dataSource = data.length == 5 ? data : data1;

    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            dataSource: dataSource,
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.sales,
          ),
        ],
      ),
    );
  }
}

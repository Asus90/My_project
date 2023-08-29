// ... Previous code ...

import 'package:flutter/material.dart';

import 'package:pro/main.dart';
import 'package:pro/widgets/glass_effect.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <LineSeries<SalesData, String>>[
                LineSeries<SalesData, String>(
                  dataSource: <SalesData>[
                    SalesData('Jan', 0),
                    SalesData('Feb', 28),
                    SalesData('Mar', 34),
                    SalesData('Apr', 32),
                    SalesData('May', 40),
                  ],
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                ),
              ],
            ),
            color: Colors.white.withOpacity(1.0),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            color: Color.fromARGB(255, 0, 124, 196),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  FrostedGlassBox(
                    theWidth: 200.0,
                    theHeight: 200.0,
                    theChild: Text('Hello world'),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

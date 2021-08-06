import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

import 'chartdata.dart';

class Chart extends StatefulWidget {
  final List chartdata;
  Chart(this.chartdata);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // backgroundColor: Colors.white,
      
      series: getDefaultData(),
      // tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<LineSeries<ChartData, num>> getDefaultData() {
     final List<ChartData> chartData = <ChartData>[];
  
  
    for (int h = 0; h < widget.chartdata.length; h++) {
      setState(() {
         chartData.add(ChartData(widget.chartdata[h]['SemesterNum'], widget.chartdata[h]['gpa']));
      });
     
    

    };
    
    return <LineSeries<ChartData, num>>[
      LineSeries<ChartData, num>(
        //  enableToolTip: isTooltipVisible,
        dataSource: chartData,
        xValueMapper: (ChartData sales, _) => num.parse(sales.semnum),
        yValueMapper: (ChartData sales, _) => num.parse(sales.Gpa),

        //  enableAnimation: false,
        markerSettings: MarkerSettings(
          isVisible: true,
          height: 4,
          width: 4,
          shape: DataMarkerType.circle,
          borderWidth: 2,
        ),
        //  dataLabelSettings: DataLabelSettings(
        //      visible: true , : ChartDataLabelAlignment)),
      )
    ];
  }
}

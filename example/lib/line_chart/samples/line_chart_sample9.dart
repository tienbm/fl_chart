import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LineChartSample9 extends StatefulWidget {
  LineChartSample9();

  @override
  _LineChartSample9State createState() => _LineChartSample9State();
}

class _LineChartSample9State extends State<LineChartSample9> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          width: double.infinity,
          height: 90,
          child: LineChart(
            LineChartData(
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Colors.transparent,
                    fitInsideHorizontally: true,
                    tooltipPadding: EdgeInsets.only(bottom: -2),
                    showOnTopOfTheChartBoxArea: true,
                    getTooltipItems: (touchedSpots) {
                      final spot = touchedSpots.first;
                      final textStyle = TextStyle().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFADADAD));

                      return [
                        LineTooltipItem(
                            '${spot.spotIndex.toString()}', textStyle)
                      ];
                    },
                  ),
                  getTouchLineStart: (data, index) => 0,
                  getTouchLineEnd: (data, index) => 10,
                ),
                lineBarsData: [
                  LineChartBarData(
                    colors: [
                      Colors.black,
                    ],
                    isStepLineChart: true,
                    lineChartStepData: LineChartStepData(stepDirection: 0.65),
                    spots: [
                      FlSpot(
                        2,
                        10,
                      ),
                      // FlSpot(
                      //   1,
                      //   1,
                      // ),
                      // FlSpot(
                      //   2,
                      //   3,
                      // ),
                      // FlSpot(
                      //   3,
                      //   4,
                      // ),
                      FlSpot(
                        4,
                        9,
                      ),
                      // FlSpot(
                      //   5,
                      //   10,
                      // ),
                      // FlSpot(
                      //   6,
                      //   1,
                      // ),
                      // FlSpot(
                      //   7,
                      //   3,
                      // ),
                      // FlSpot(
                      //   8,
                      //   4,
                      // ),
                      FlSpot(
                        9,
                        9,
                      )
                    ],
                    isCurved: true,
                    isStrokeCapRound: true,
                    barWidth: 1.5,
                    belowBarData: BarAreaData(
                      show: true,
                      colors: [
                        const Color(0xFFF4FBF7),
                        const Color(0xFFFFFFFF),
                      ],
                      gradientTo: const Offset(0.0, 1.0),
                      gradientFrom: const Offset(0.0, 0.5),
                    ),
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        return FlDotCirclePainter(
                          radius: 1,
                          color: Color(0xFF00C805),
                          strokeWidth: 1,
                          strokeColor: Color(0xFF00C805),
                        );
                      },
                    ),
                  ),
                ],
                minY: 0,
                maxY: 12,
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(showTitles: false),
                  rightTitles: SideTitles(showTitles: false),
                  bottomTitles: SideTitles(showTitles: false),
                  topTitles: SideTitles(showTitles: false),
                ),
                borderData: FlBorderData(show: false),
                gridData: FlGridData(show: false)),
          ),
        ),
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          width: double.infinity,
          height: 90,
          child: LineChart(
            LineChartData(
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                      maxContentWidth: 100,
                      tooltipBgColor: Colors.orange,
                      getTooltipItems: (touchedSpots) {
                        return touchedSpots.map((LineBarSpot touchedSpot) {
                          final textStyle = TextStyle(
                            color: touchedSpot.bar.colors[0],
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          );
                          return LineTooltipItem(
                              '${touchedSpot.x}, ${touchedSpot.y.toStringAsFixed(2)}',
                              textStyle);
                        }).toList();
                      }),
                  handleBuiltInTouches: true,
                  getTouchLineStart: (data, index) => 0,
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
                        0,
                        10,
                      ),
                      FlSpot(
                        1,
                        1,
                      ),
                      FlSpot(
                        2,
                        3,
                      ),
                      FlSpot(
                        3,
                        4,
                      ),
                      FlSpot(
                        4,
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
                maxY: 10,
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

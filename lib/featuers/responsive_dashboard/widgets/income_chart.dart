import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            touchedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: 40,
            color: Color(0xff208CC8),
            showTitle: false,
            radius: touchedIndex == 0 ? 65 : 50,
          ),
          PieChartSectionData(
            value: 25,
            color: Color(0xff4DB7F2),
            showTitle: false,
            radius: touchedIndex == 1 ? 65 : 50,
          ),
          PieChartSectionData(
            value: 20,
            color: Color(0xff064061),
            showTitle: false,
            radius: touchedIndex == 2 ? 65 : 50,
          ),
          PieChartSectionData(
            value: 22,
            color: Color(0xffE2DECD),
            showTitle: false,
            radius: touchedIndex == 3 ? 65 : 50,
          ),
        ]);
  }
}

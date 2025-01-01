import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive/core/utils/app_styles.dart';

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
            radius: touchedIndex == 0 ? 55 : 40,
          ),
          PieChartSectionData(
            value: 25,
            color: Color(0xff4DB7F2),
            showTitle: false,
            radius: touchedIndex == 1 ? 55 : 40,
          ),
          PieChartSectionData(
            value: 20,
            color: Color(0xff064061),
            showTitle: false,
            radius: touchedIndex == 2 ? 55 : 40,
          ),
          PieChartSectionData(
            value: 22,
            color: Color(0xffE2DECD),
            showTitle: false,
            radius: touchedIndex == 3 ? 55 : 40,
          ),
        ]);
  }
}

class IncomeDetailsChart extends StatefulWidget {
  const IncomeDetailsChart({super.key});

  @override
  State<IncomeDetailsChart> createState() => _IncomeDetailsChartState();
}

class _IncomeDetailsChartState extends State<IncomeDetailsChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:  BoxConstraints(maxWidth: 160),
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          getChartData(),
        ),
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
            titlePositionPercentageOffset:touchedIndex == 0 ? 1.5 : null,
            title: touchedIndex == 0 ? 'Design service' : '40%',
            value: 40,
            titleStyle: AppStyles.styleRegular16(context).copyWith(
              color:touchedIndex == 0 ?  null : Colors.white
            ),
            color: Color(0xff208CC8),
            radius: touchedIndex == 0 ? 55 : 40,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset:touchedIndex == 1 ? 2.2 : null,

            value: 25,
            title:touchedIndex == 1 ? 'Design product' : '25%',
            color: Color(0xff4DB7F2),
            titleStyle: AppStyles.styleRegular16(context).copyWith(
                color: touchedIndex == 1 ?  null : Colors.white
            ),
            radius: touchedIndex == 1 ? 55 : 40,
          ),
          PieChartSectionData(
            value: 20,
            titlePositionPercentageOffset:touchedIndex == 2 ? 1.5 : null,

            title: touchedIndex == 2 ? 'Product royalti' : '20%',
            color: Color(0xff064061),
            titleStyle: AppStyles.styleRegular16(context).copyWith(
                color: touchedIndex == 2 ?  null : Colors.white
            ),
            radius: touchedIndex == 2 ? 55 : 40,
          ),
          PieChartSectionData(
            value: 22,
            titlePositionPercentageOffset:touchedIndex == 3 ? 1.5 : null,

            title: touchedIndex == 3 ? 'Royalti' : '22%',
            color: Color(0xffE2DECD),
            titleStyle: AppStyles.styleRegular16(context).copyWith(
                color:touchedIndex == 3 ?  null : Colors.white
            ),
            radius: touchedIndex == 3 ? 55 : 40,
          ),
        ]);
  }
}

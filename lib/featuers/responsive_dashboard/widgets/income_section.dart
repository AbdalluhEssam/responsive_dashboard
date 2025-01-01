import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/cusutom_background_container.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/income_details.dart';
import '../../../core/utils/size_config.dart';
import 'icome_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeHeader(),
        SizedBox(
          height: 12,
        ),
        IncomeSectionBody()
      ],
    ));
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop  && width < 1600
        ? Padding(
          padding: const EdgeInsets.all(16.0),
          child: IncomeDetailsChart(),
        )
        : Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        SizedBox(
          width: 12,
        ),
        Expanded(flex: 2, child: IncomeDetails()),
      ],
    );
  }
}

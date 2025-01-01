import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/cusutom_background_container.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/income_details.dart';
import '../../../core/utils/app_styles.dart';
import 'icome_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(child: Column(
      children: [
        IncomeHeader(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),

            ],
          ),
        )

      ],
    ));
  }
}



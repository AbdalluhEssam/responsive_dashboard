import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/range_options.dart';

import '../../../core/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        RangeOptions()
      ],
    );
  }
}

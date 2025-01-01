import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/latest_transation_list_view.dart';

import '../../../core/utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const  LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16(context),),
        SizedBox(
          height: 16,
        ),
        LatestTransactionListView()
      ],
    );
  }
}


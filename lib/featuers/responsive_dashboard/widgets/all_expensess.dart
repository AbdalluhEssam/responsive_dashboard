import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/all_expensess_item.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/range_options.dart';

import '../../../core/utils/app_styles.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "All Expenses",
                style: AppStyles.styleSemiBold20(context),
              ),
              Spacer(),
              RangeOptions()
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AllExpensesItem()
        ],
      ),
    );
  }
}


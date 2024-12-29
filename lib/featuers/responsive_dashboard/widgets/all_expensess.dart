import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/all_expenses_item_list_view.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/range_options.dart';
import '../../../core/utils/app_styles.dart';
import 'cusutom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
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
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}

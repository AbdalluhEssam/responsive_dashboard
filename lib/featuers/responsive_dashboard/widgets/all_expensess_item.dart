import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/model/all_expensess_item_model.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/all_expenses_item_header.dart';

import '../../../core/utils/app_styles.dart';
import 'inactive_and_active_all_expeses.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}

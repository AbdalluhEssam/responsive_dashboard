import 'package:flutter/material.dart';
import 'package:responsive/core/utils/app_styles.dart';
import 'package:responsive/featuers/responsive_dashboard/model/transaction_mode.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.data,
          style: AppStyles.styleRegular16(context).copyWith(
            color: Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          "\$${transactionModel.amount}",
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithdrawal
                  ? Color(0xFFF3735E)
                  : Color(0xff7DD97B)),
        ),
      ),
    );
  }
}

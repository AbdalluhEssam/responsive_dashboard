import 'package:flutter/material.dart';
import 'package:responsive/core/utils/app_styles.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text("13 April 2022",style: AppStyles.styleSemiBold16(context).copyWith(
          color: Color(0xffAAAAAA)
        ),),
        SizedBox(
          height: 16,
        ),

        TransactionHistoryListView()

      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20(context),
        ),

        Text(
          "See All",
          style: AppStyles.styleMedium16(context).copyWith(
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}

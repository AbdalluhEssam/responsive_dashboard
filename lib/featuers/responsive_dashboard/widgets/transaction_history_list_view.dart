import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/transaction_item.dart';

import '../model/transaction_mode.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static List<TransactionModel> item = [
    TransactionModel(
        title: "Cash Withdrawal",
        data: "13 Apr, 2022 ",
        amount: "20,129",
        isWithdrawal: true),
    TransactionModel(
        title: "Landing Page project",
        data: "13 Apr, 2022 at 3:30 PM",
        amount: "2,000",
        isWithdrawal: false),
    TransactionModel(
        title: "Juni Mobile App project",
        data: "13 Apr, 2022 at 3:30 PM",
        amount: "20,129",
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:item.map((e) => TransactionItem(transactionModel: e,)).toList()
    );
  }
}

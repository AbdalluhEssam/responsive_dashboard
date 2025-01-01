import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/income_section.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/my_cards_and_transaction_history_section.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        MyCardsAndTransactionHistorySection(),
        SizedBox(height: 24),
        IncomeSection()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/my_card_and_transaction_and_income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          MyCardAndTransactionAndIncomeSection(),
          // IncomeSection(),
        ],
      ),
    );
  }
}

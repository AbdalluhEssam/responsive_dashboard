import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/custom_drawer.dart';
import 'all_expensess_and_quick_invoice_section.dart';
import 'my_card_and_transaction_and_income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: AllExpensessAndQuickInvoiceSection(),
                        )),
                    SizedBox(width: 32),
                    Expanded(
                        child: MyCardAndTransactionAndIncomeSection()),
                    SizedBox(width: 32),
                  ],
                ),
              )
            ]
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/custom_dot.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/my_card.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/my_card_page_view.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/my_card_saction.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/my_cards_and_transaction_history_section.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/quick_invoice.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/transction_history.dart';

import '../../../core/utils/app_styles.dart';
import 'all_expensess.dart';
import 'all_expensess_and_quick_invoice_section.dart';
import 'income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(width: 32),
        Expanded(
            child: Column(
          children: [
            SizedBox(height: 40),
            MyCardsAndTransactionHistorySection(),
            SizedBox(height: 24),
            Expanded(child: IncomeSection())
          ],
        )),
        SizedBox(width: 32),
      ],
    );
  }
}

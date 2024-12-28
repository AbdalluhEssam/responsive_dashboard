import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/custom_drawer.dart';

import 'all_expensess.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(child: AllExpenses())
              ],
            )),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(child: AllExpenses())
              ],
            )),
      ],
    );
  }
}

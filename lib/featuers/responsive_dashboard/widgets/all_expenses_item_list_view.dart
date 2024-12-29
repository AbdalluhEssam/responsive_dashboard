import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/model/all_expensess_item_model.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/all_expensess_item.dart';

import '../../../core/utils/app_images.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});



  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    AllExpensesItemModel(image: Assets.imagesBalance, title: "Balance",  price: "\$20.129", date: "April 2022",),
    AllExpensesItemModel(image: Assets.imagesIncome, title: "Income",  price: "\$20.129", date: "April 2022",),
    AllExpensesItemModel(image: Assets.imagesExpenses, title: "Expenses",  price: "\$20.129", date: "April 2022",),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) => Expanded(child: GestureDetector(
        onTap: () {
          selectedIndex = entry.key;
          setState(() {

          });
        },
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: entry.key == 1 ? 12 : 0),
          child: AllExpensesItem(allExpensesItemModel: entry.value,isSelected: selectedIndex == entry.key ),
        ),
      ))).toList(),
    );
  }
}

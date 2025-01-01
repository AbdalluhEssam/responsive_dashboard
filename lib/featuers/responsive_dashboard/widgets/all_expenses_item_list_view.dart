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
      children: [
        Expanded(child: GestureDetector(
          onTap: () {
            selectedIndex = 0;
            setState(() {

            });
          },
          child: AllExpensesItem(allExpensesItemModel: items[0],isSelected: selectedIndex == 0),
        )),
        SizedBox(width: 8,),
        Expanded(child: GestureDetector(
          onTap: () {
            selectedIndex = 1;
            setState(() {

            });
          },
          child: AllExpensesItem(allExpensesItemModel: items[1],isSelected: selectedIndex == 1),
        )),
        SizedBox(width: 8,),
        Expanded(child: GestureDetector(
          onTap: () {
            selectedIndex = 2;
            setState(() {

            });
          },
          child: AllExpensesItem(allExpensesItemModel: items[2],isSelected: selectedIndex == 2),
        )),

      ],
    );
  }
}

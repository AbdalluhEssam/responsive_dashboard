import 'package:flutter/material.dart';
import 'package:responsive/core/utils/app_images.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
        ),
      ),
      child: Column(children: [
        AllExpensesItemHeader(image: Assets.imagesLogout,)
      ]),
    );
  }
}


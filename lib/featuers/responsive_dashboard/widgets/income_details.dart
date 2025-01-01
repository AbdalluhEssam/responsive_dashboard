import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/model/item_details_model.dart';

import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static List<ItemDetailsModel> item = [
    ItemDetailsModel(
        title: "Design service", value: "40%", color: Color(0xFF208BC7)),
    ItemDetailsModel(
        title: "Design product", value: "25%", color: Color(0xFF4EB7F2)),
    ItemDetailsModel(
        title: "Product royalti", value: "20%", color: Color(0xFF064061)),
    ItemDetailsModel(title: "Other", value: "20%", color: Color(0xFFE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: item.map((e) => ItemDetails(itemDetailsModel: e,)).toList(),
    );
  }
}

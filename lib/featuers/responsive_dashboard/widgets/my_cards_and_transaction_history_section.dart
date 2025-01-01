import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/cusutom_background_container.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/transction_history.dart';

import 'my_card_saction.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(child: Column(
      children: [
        MyCardSection(),
        Divider(height: 40,color: Color(0xffF1F1F1),),
        TransactionHistory(),

      ],
    ));
  }
}

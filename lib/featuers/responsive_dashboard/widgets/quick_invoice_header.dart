import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Quick Invoice",style: AppStyles.styleSemiBold20(context),),

        IconButton(onPressed: () {

        }, icon: Icon(Icons.add,color: Color(0xff4EB7F2),))
      ],
    );
  }
}

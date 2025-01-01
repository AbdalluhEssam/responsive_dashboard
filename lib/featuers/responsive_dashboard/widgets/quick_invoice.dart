import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/custom_text_field.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/cusutom_background_container.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/latest_transction.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/title_text_field.dart';

import '../../../core/utils/app_styles.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 16,
        ),
        LatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}




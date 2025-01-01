import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TitleTextField(title: "Customer name", hint: "Type customer name"),
            const SizedBox(width: 16),
            TitleTextField(title: "Customer Email", hint: "Type customer email"),

          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            TitleTextField(title: "Item name", hint: "Type customer name"),
            const SizedBox(width: 16),
            TitleTextField(title: "Item mount", hint: "USD"),

          ],
        ),
        const SizedBox(height: 24),
       Row(
         children: [
           CustomButton(backgroundColor: Colors.transparent,textColor: Color(0xFF4DB7F2),),
           const SizedBox(width: 24),
           CustomButton(),
         ],
       )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/custom_text_field.dart';

import '../../../core/utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title ,hint;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 10),
          CustomTextField(hint: hint,)
        ],
      ),
    );
  }
}

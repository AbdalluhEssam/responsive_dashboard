import 'package:flutter/material.dart';
import 'package:responsive/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor});

  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: Size.fromHeight(62),
            backgroundColor: backgroundColor ?? Color(0xFF4EB7F2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {},
          child: Text(
            "Send Money",
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor,
            ),
          )),
    );
  }
}

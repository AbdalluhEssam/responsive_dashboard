import 'package:flutter/material.dart';

import 'custom_item.dart';
import 'custom_item2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: CustomItem()),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}

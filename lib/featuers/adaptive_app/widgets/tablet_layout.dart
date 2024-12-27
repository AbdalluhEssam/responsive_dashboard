import 'package:flutter/material.dart';

import 'custom_list.dart';
import 'custom_list_view.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      clipBehavior: Clip.none,
      slivers: [
        CustomList(),
        CustomSliverListView(),
      ],
    );
  }
}


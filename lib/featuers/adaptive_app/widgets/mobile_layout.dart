import 'package:flutter/material.dart';

import 'custom_list_view.dart';
import 'custom_sliver_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      clipBehavior: Clip.none,
      slivers: [
        CustomSliverGrid(),
        CustomSliverListView(),
      ],
    );
  }
}

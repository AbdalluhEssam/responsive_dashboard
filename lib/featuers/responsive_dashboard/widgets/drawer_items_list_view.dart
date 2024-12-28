import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';
import '../model/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: "Dashboard",
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransctions,
      title: "My Transaction",
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: "Statistics",
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: "My Investments",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }

        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}

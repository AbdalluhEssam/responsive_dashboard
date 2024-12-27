import 'package:flutter/material.dart';
import '../models/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CustomDrawerItem(
        drawerItemModel: DrawerItemModel(
            title: items[index].title, icon: items[index].icon),
      ),
      itemCount: items.length,
    );
  }
}

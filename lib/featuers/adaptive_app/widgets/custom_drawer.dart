import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/drawer_item_model.dart';
import 'custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static  List<DrawerItemModel> items = [
    DrawerItemModel(title: 'DASHBOARD', icon: Icons.home),
    DrawerItemModel(title: 'PROFILE', icon: Icons.person),
    DrawerItemModel(title: 'SETTINGS', icon: Icons.settings),
    DrawerItemModel(title: 'LOGOUT', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
            ),
          ),
          SizedBox(height: 16,),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}


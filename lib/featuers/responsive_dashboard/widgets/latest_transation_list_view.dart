import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/model/user_info_model.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/user_info_list_tile.dart';

import '../../../core/utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail.com"),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
      ),
    );

  }
}

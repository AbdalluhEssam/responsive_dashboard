import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/core/utils/app_images.dart';

import '../../../core/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        // padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
          image: DecorationImage(
              image: ExactAssetImage(Assets.imagesCardBackground),fit: BoxFit.fill),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Color(0xff4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
              trailing: SvgPicture.asset(Assets.imagesGallery),
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 48-24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "12/20 - 124 ",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 54-28,
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}

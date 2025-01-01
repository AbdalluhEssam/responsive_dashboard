import 'package:flutter/material.dart';
import 'package:responsive/core/helper/adaptive.dart';
import 'package:responsive/core/utils/app_styles.dart';
import 'package:responsive/core/utils/size_config.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/dashboard_tablet_layout.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/dashboard_mobile_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              title: Text(
                "Dashboard Mobile Layout",
                style: AppStyles.styleRegular16(context),
              ),
              centerTitle: true,
              backgroundColor: Color(0xFFF7F9FA),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      drawer: width < SizeConfig.tablet
          ? Drawer(
              child: const CustomDrawer(),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}

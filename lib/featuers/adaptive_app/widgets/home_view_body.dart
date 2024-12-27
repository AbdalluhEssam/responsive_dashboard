import 'package:flutter/material.dart';
import 'package:responsive/featuers/adaptive_app/widgets/desktop_layout.dart';
import 'package:responsive/featuers/adaptive_app/widgets/tablet_layout.dart';


import 'adaptive_layout.dart';
import 'mobile_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: AdaptiveLayout(
          mobileLayout: (context) => MobileLayout(),
          tabletLayout: (context) => TabletLayout(),
          desktopLayout: (context) => DesktopLayout(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:responsive/featuers/adaptive_app/widgets/custom_drawer.dart';
import 'package:responsive/featuers/adaptive_app/widgets/tablet_layout.dart';
import 'custom_desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TabletLayout(),
          ),
        ),
        Expanded(child: CustomDesktopWidget())
      ],
    );
  }
}

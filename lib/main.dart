import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/views/dashborad_view.dart';

void main() {

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Responsive Dashboard',
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}

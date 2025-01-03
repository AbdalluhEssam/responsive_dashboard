import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import 'dots_indicator.dart';
import 'my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: AppStyles.styleSemiBold20(context),
        ),
        SizedBox(height: 20),
        MyCardPageView(
          pageController: pageController,
        ),
        SizedBox(height: 20),
        DotsIndicator(
          currentIndex: currentPageIndex,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:List.generate(3, (index) =>  CustomDotIndicator(isActive: index == currentIndex? true : false,),),
    );
  }
}

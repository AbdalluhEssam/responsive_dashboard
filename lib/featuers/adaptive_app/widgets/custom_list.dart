import 'package:flutter/material.dart';

import 'custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(

          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: AspectRatio(
                aspectRatio: 1,
                child: CustomItem()),
          ),
        ),
      ),
    );
  }
}

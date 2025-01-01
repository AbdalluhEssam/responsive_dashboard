import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageColor, this.imageBackground});

  final String image;
  final Color? imageBackground, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 60),
              child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
              decoration: ShapeDecoration(
                color: imageBackground ?? Color(0xFFFAFAFA),
                shape: OvalBorder(),
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
                ),
              ),
                        ),
                      ),
            )),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: imageColor ?? Color(0xff4EB7F2),
            )),
      ],
    );
  }
}

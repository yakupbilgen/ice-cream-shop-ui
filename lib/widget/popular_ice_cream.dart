import 'package:flutter/material.dart';
import 'package:icecreamui/constant/app_constant.dart';

class PopularIceCreamCard extends StatelessWidget {
  final String imagePath;
  final String iceCreamTitle;
  const PopularIceCreamCard(
      {Key? key, required this.imagePath, required this.iceCreamTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Image.asset(imagePath),
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius:
                BorderRadius.circular(AppConstant.defaultBorderRadius),
          ),
        ),
        Text(iceCreamTitle),
        const SizedBox(
          width: AppConstant.defaultWidth,
        )
      ],
    );
  }
}

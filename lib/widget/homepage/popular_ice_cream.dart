import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/text_constant.dart';

class PopularIceCreamWidget extends StatelessWidget {
  final String imagePath;
  final String iceCreamTitle;
  const PopularIceCreamWidget(
      {Key? key, required this.imagePath, required this.iceCreamTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          color: AppConstant.cardBackgroundColor,
          child: Row(
            children: [
              SizedBox(
                width: deviceSize.width * 0.2,
                height: deviceSize.height * 0.1,
                child: Image.asset(imagePath),
              ),
              const SizedBox(width: AppConstant.defaultWidthMin),
              Text(
                iceCreamTitle,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: AppConstant.defaultWidthMin),
            ],
          ),
        ),
        const SizedBox(
          width: AppConstant.defaultWidth,
        )
      ],
    );
  }
}

String vanillaIceCream = 'assets/images/ice_cream/vanilla.png';
String iceCreamTwo = 'assets/images/ice_cream/2.png';
String iceCreamThree = 'assets/images/ice_cream/3.png';
String iceCreamFour = 'assets/images/ice_cream/4.png';

class PopularIceCreamCard extends StatelessWidget {
  const PopularIceCreamCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextConstant.populerIceCream,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: AppConstant.defaultHeight),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularIceCreamWidget(
                  imagePath: vanillaIceCream,
                  iceCreamTitle: TextConstant.vanilla),
              PopularIceCreamWidget(
                  imagePath: iceCreamTwo,
                  iceCreamTitle: TextConstant.neopolitan),
              PopularIceCreamWidget(
                  imagePath: iceCreamThree,
                  iceCreamTitle: TextConstant.chocolate),
              PopularIceCreamWidget(
                  imagePath: iceCreamFour,
                  iceCreamTitle: TextConstant.strawberry),
              PopularIceCreamWidget(
                  imagePath: vanillaIceCream,
                  iceCreamTitle: TextConstant.melon),
            ],
          ),
        ),
      ],
    );
  }
}

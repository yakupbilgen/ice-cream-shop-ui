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
          color: Colors.pink.shade100,
          child: Row(
            children: [
              SizedBox(
                width: deviceSize.width / 4,
                child: Image.asset(imagePath),
              ),
              const SizedBox(width: 5),
              Text(
                iceCreamTitle,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
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
                  imagePath: vanillaIceCream,
                  iceCreamTitle: TextConstant.neopolitan),
              PopularIceCreamWidget(
                  imagePath: vanillaIceCream,
                  iceCreamTitle: TextConstant.chocolate),
              PopularIceCreamWidget(
                  imagePath: vanillaIceCream,
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

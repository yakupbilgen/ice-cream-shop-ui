import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../screen/ice_cream_detail.dart';
import '../../constant/text_constant.dart';

String iceCreamOne = 'assets/images/ice_cream/2.png';
String iceCreamTwo = 'assets/images/ice_cream/3.png';

class TopItemCard extends StatelessWidget {
  const TopItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextConstant.topItem,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: AppConstant.defaultHeight),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              cardItem(context, deviceSize, iceCreamOne),
              cardItem(context, deviceSize, iceCreamTwo),
            ],
          ),
        ),
      ],
    );
  }
}

Widget cardItem(BuildContext context, Size deviceSize, iceCreamImage) {
  return Card(
    elevation: 0,
    child: Container(
      padding: const EdgeInsets.only(left: AppConstant.defaultWidthMin),
      decoration: BoxDecoration(
        color: AppConstant.cardBackgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppConstant.defaultBorderRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            iceCreamImage,
            width: deviceSize.width * 0.4,
          ),
          const SizedBox(width: AppConstant.defaultHeightMin),
          Text(
            TextConstant.sherbetFlavors,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: AppConstant.defaultHeightMin),
          Text(
            TextConstant.strawberryjam,
            style: Theme.of(context).textTheme.subtitle2,
            textAlign: TextAlign.right,
          ),
          const SizedBox(width: AppConstant.defaultHeightMin),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                TextConstant.topItemCost,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: deviceSize.width * 0.05,
              ),
              RawMaterialButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IceCreamDetail(),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                fillColor: AppConstant.buttonBackgroundColor,
                shape: const CircleBorder(),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

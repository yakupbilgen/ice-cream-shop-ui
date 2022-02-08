import 'package:flutter/material.dart';
import 'package:icecreamui/constant/app_constant.dart';

String vanillaIceCream = 'assets/images/ice_cream/vanilla.png';

class TopItemCard extends StatelessWidget {
  const TopItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Item',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: AppConstant.defaultHeight),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              cardItem(context, deviceSize),
              cardItem(context, deviceSize),
            ],
          ),
        ),
      ],
    );
  }
}

Widget cardItem(BuildContext context, Size deviceSize) {
  return Card(
    elevation: 0,
    child: Container(
      padding: const EdgeInsets.only(left: AppConstant.defaultWidthMin),
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppConstant.defaultBorderRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            vanillaIceCream,
            width: deviceSize.width * 0.4,
          ),
          const SizedBox(width: AppConstant.defaultHeightMin),
          Text(
            'Sherbet flavors',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: AppConstant.defaultHeightMin),
          Text(
            'With strawberry jam',
            style: Theme.of(context).textTheme.subtitle2,
            textAlign: TextAlign.right,
          ),
          const SizedBox(width: AppConstant.defaultHeightMin),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '\$14,60',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: deviceSize.width * 0.05,
              ),
              RawMaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                fillColor: Colors.pink.shade500,
                shape: const CircleBorder(),
              )
            ],
          )
        ],
      ),
    ),
  );
}

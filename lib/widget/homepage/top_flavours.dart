import 'package:flutter/material.dart';

import '../../screen/ice_cream_detail.dart';
import '../../constant/app_constant.dart';
import '../../constant/text_constant.dart';

class TopFlavoursCard extends StatelessWidget {
  const TopFlavoursCard({Key? key}) : super(key: key);

  final String vanillaIceCream = 'assets/images/ice_cream/vanilla.png';

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Card(
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextConstant.topFlavours,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: AppConstant.defaultHeight),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: deviceSize.width * 0.4,
                  child: Image.asset(vanillaIceCream),
                ),
                const SizedBox(width: AppConstant.defaultWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        TextConstant.vanillaIceCream,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          color: Colors.amber,
                          child: Text('1KG',
                              style: Theme.of(context).textTheme.subtitle2),
                        ),
                        SizedBox(width: deviceSize.width * 0.1),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text('4.9',
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          TextConstant.topFlavoursCost,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: deviceSize.width * 0.1),
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
                )
              ],
            ),
            decoration: BoxDecoration(
              color: AppConstant.cardBackgroundColor,
              borderRadius:
                  BorderRadius.circular(AppConstant.defaultBorderRadius),
            ),
          ),
        ],
      ),
    );
  }
}

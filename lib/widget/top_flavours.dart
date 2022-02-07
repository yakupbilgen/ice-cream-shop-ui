import 'package:flutter/material.dart';

import '../constant/app_constant.dart';

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
            'Top Flavours',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: AppConstant.defaultHeight),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: deviceSize.width / 5 * 2,
                  child: Image.asset(vanillaIceCream),
                ),
                //const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Vanilla Ice Cream',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.amber,
                          child: Text('1KG',
                              style: Theme.of(context).textTheme.subtitle2),
                        ),
                        SizedBox(width: deviceSize.width / 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.9',
                                style: Theme.of(context).textTheme.subtitle2)
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '\$14,60',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: deviceSize.width / 10,
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
                )
              ],
            ),
            decoration: BoxDecoration(
              //color: const Color(0xFFF7C9D4),
              color: Colors.pink.shade100,
              borderRadius:
                  BorderRadius.circular(AppConstant.defaultBorderRadius),
            ),
          ),
        ],
      ),
    );
  }
}

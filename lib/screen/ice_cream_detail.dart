import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/app_constant.dart';

class IceCreamDetail extends StatefulWidget {
  const IceCreamDetail({Key? key}) : super(key: key);

  @override
  _IceCreamDetailState createState() => _IceCreamDetailState();
}

String iceCreamImage = 'assets/images/ice_cream/vanilla.png';

class _IceCreamDetailState extends State<IceCreamDetail> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back, color: Colors.pink.shade100)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.pink.shade100,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(iceCreamImage),
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: const BorderRadius.only(
                    bottomLeft:
                        Radius.circular(AppConstant.defaultBorderRadius),
                    bottomRight:
                        Radius.circular(AppConstant.defaultBorderRadius),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppConstant.defaultPaddingAll),
              child: Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Raspberry Ice Cream',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: AppConstant.defaultHeightMin),
                    Row(
                      children: [
                        const Icon(Icons.stars, color: Colors.yellow),
                        const Icon(Icons.stars, color: Colors.yellow),
                        const Icon(Icons.stars, color: Colors.yellow),
                        const Icon(Icons.stars, color: Colors.yellow),
                        const Icon(Icons.stars),
                        const SizedBox(width: AppConstant.defaultWidth),
                        Text('4.9 [229 Reviews]',
                            style: Theme.of(context).textTheme.subtitle1),
                        const SizedBox(width: AppConstant.defaultWidthMin),
                      ],
                    ),
                    const SizedBox(height: AppConstant.defaultHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: Colors.pink.shade500,
                              ),
                            ),
                            Text('2 Kg',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.pink.shade500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppConstant.defaultHeight),
                        Text('\$14,60',
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: AppConstant.defaultHeight),
                    Text(
                        "The best sorbets come from the best fruits. That's why we hand-pick heritage raspberriest and combine them with the sweetest amd öpst juice stawberries.",
                        style: Theme.of(context).textTheme.headline6),
                    const SizedBox(height: AppConstant.defaultHeight),
                    SizedBox(
                      width: deviceSize.width,
                      height: deviceSize.height * 0.07,
                      child: RawMaterialButton(
                        fillColor: Colors.pink.shade100,
                        onPressed: () {},
                        child: Text(
                          'Add to Card',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstant.defaultPaddingAll),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Card(
                elevation: 0,
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
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Raspberry Ice Cream',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
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
                        """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""",
                        style: Theme.of(context).textTheme.headline6),
                    const SizedBox(height: AppConstant.defaultHeight),
                    SizedBox(
                      width: deviceSize.width,
                      height: deviceSize.height * 0.1,
                      child: RawMaterialButton(
                        fillColor: Colors.pink.shade500,
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

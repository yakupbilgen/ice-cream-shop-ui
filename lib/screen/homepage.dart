import 'package:flutter/material.dart';
import 'package:icecreamui/constant/app_constant.dart';
import 'package:icecreamui/widget/popular_ice_cream.dart';
import 'package:icecreamui/widget/profil_name_and_photo.dart';
import 'package:icecreamui/widget/top_item.dart';

import '../widget/search.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

String vanillaIceCream = 'assets/images/ice_cream/vanilla.png';

class _HomepageState extends State<Homepage> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfilNameAndPhohtoCard(),
              const SizedBox(height: AppConstant.defaultHeight),
              const SearchCard(),
              const SizedBox(height: AppConstant.defaultHeight),

              Text(
                'Top Flavours',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: AppConstant.defaultHeight),

              //Vanilla ice cream
              Card(
                elevation: 0,
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: deviceSize.width / 5 * 2,
                        child: Image.asset(vanillaIceCream),
                      ),
                      Column(
                        children: [
                          const Text('Vanilla Ice Cream'),
                          Row(
                            children: [
                              Container(
                                color: Colors.yellow,
                                child: const Text('1KG'),
                              ),
                              const Text('4.9')
                            ],
                          ),
                          Row(
                            children: [
                              const Text('\$14,60'),
                              RawMaterialButton(
                                onPressed: () {},
                                child: const Icon(Icons.add),
                                fillColor: Colors.pink.shade900,
                                shape: const CircleBorder(),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7C9D4),
                    borderRadius:
                        BorderRadius.circular(AppConstant.defaultBorderRadius),
                  ),
                ),
              ),
              const Text('Popular Ice Cream'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PopularIceCreamCard(
                        imagePath: vanillaIceCream, iceCreamTitle: 'Vanilla'),
                    PopularIceCreamCard(
                        imagePath: vanillaIceCream, iceCreamTitle: 'Vanilla'),
                    PopularIceCreamCard(
                        imagePath: vanillaIceCream, iceCreamTitle: 'Vanilla'),
                    PopularIceCreamCard(
                        imagePath: vanillaIceCream, iceCreamTitle: 'Vanilla'),
                    PopularIceCreamCard(
                        imagePath: vanillaIceCream, iceCreamTitle: 'Vanilla'),
                  ],
                ),
              ),
              const Text('Top Item'),
              Row(
                children: const [TopItemCard()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

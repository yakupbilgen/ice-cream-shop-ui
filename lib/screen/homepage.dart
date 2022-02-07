import 'package:flutter/material.dart';
import 'package:icecreamui/constant/app_constant.dart';
import 'package:icecreamui/widget/popular_ice_cream.dart';
import 'package:icecreamui/widget/profil_name_and_photo.dart';
import 'package:icecreamui/widget/top_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

String vanillaIceCream = '';

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppConstant.defaultPaddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //profil name and photo
            const ProfilNameAndPhohtoCard(),
            //search text and button
            const SizedBox(height: AppConstant.defaultHeight),
            Stack(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          AppConstant.defaultBorderRadius),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: RawMaterialButton(
                    fillColor: Colors.pink.shade400,
                    onPressed: () => Navigator.pop(context),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.filter,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Filter',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstant.defaultHeight),

            Text(
              'Top Flavours',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: AppConstant.defaultHeight),

            //Vanilla ice cream
            Card(
              child: Container(
                child: Row(
                  children: [
                    Image.asset(vanillaIceCream),
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
                    borderRadius:
                        BorderRadius.circular(AppConstant.defaultBorderRadius),
                    color: Colors.pink.shade100),
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
            )
          ],
        ),
      ),
    );
  }
}

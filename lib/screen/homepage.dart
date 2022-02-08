import 'package:flutter/material.dart';
import 'package:icecreamui/constant/app_constant.dart';
import 'package:icecreamui/widget/popular_ice_cream.dart';
import 'package:icecreamui/widget/profil_name_and_photo.dart';
import 'package:icecreamui/widget/top_flavours.dart';
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
    //Size deviceSize = MediaQuery.of(context).size;

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
              const TopFlavoursCard(),
              const SizedBox(height: AppConstant.defaultHeight),
              const PopularIceCreamCard(),
              const SizedBox(height: AppConstant.defaultHeight),
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

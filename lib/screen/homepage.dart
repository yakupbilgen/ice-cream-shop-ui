import 'package:flutter/material.dart';

import '../constant/app_constant.dart';
import '../widget/homepage/popular_ice_cream.dart';
import '../widget/homepage/profil_name_and_photo.dart';
import '../widget/homepage/top_flavours.dart';
import '../widget/homepage/top_item.dart';
import '../widget/homepage/search.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

String vanillaIceCream = 'assets/images/ice_cream/vanilla.png';

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
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
            children: const [
              ProfilNameAndPhohtoCard(),
              SizedBox(height: AppConstant.defaultHeight),
              SearchCard(),
              SizedBox(height: AppConstant.defaultHeight),
              TopFlavoursCard(),
              SizedBox(height: AppConstant.defaultHeight),
              PopularIceCreamCard(),
              SizedBox(height: AppConstant.defaultHeight),
              TopItemCard(),
            ],
          ),
        ),
      ),
    );
  }
}

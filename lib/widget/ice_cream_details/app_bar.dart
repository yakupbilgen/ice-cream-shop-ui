import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back, color: AppConstant.buttonBackgroundColor),),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: AppConstant.buttonBackgroundColor,
          )),
    ],
  );
}

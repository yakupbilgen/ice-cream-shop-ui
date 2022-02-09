import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';

String iceCreamImage = 'assets/images/ice_cream/vanilla.png';

Container buildIceCreamImage() {
  return Container(
    child: Image.asset(iceCreamImage),
    decoration: BoxDecoration(
      color: Colors.pink.shade100,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(AppConstant.defaultBorderRadius),
        bottomRight: Radius.circular(AppConstant.defaultBorderRadius),
      ),
    ),
  );
}

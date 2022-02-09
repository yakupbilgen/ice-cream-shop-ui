import 'package:flutter/material.dart';

import '../constant/app_constant.dart';
import '../widget/ice_cream_details/app_bar.dart';
import '../widget/ice_cream_details/ice_cream_details.dart';
import '../widget/ice_cream_details/ice_cream_image.dart';

class IceCreamDetail extends StatefulWidget {
  const IceCreamDetail({Key? key}) : super(key: key);

  @override
  _IceCreamDetailState createState() => _IceCreamDetailState();
}

class _IceCreamDetailState extends State<IceCreamDetail> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: buildIceCreamImage(),
          ),
          Padding(
            padding: const EdgeInsets.all(AppConstant.defaultPaddingAll),
            child: Expanded(
              flex: 2,
              child: buildIceCreamDetails(context, deviceSize),
            ),
          ),
        ],
      ),
    );
  }
}

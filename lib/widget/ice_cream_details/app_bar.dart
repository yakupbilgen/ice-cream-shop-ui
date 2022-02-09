import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back, color: Colors.pink.shade500)),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: Colors.pink.shade500,
          )),
    ],
  );
}

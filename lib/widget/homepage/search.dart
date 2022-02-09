import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/text_constant.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(99, 189, 189, 189),
            hintText: TextConstant.search,
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(AppConstant.defaultBorderRadius),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 5,
          height: 50,
          child: Container(
            width: deviceSize.width / 4,
            decoration: BoxDecoration(
              color: Colors.pink.shade500,
              borderRadius: const BorderRadius.all(
                Radius.circular(AppConstant.defaultBorderRadius),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
                Text(
                  TextConstant.filter,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';

Column buildIceCreamDetails(BuildContext context, Size deviceSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Raspberry Ice Cream',
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
      const SizedBox(height: AppConstant.defaultHeightMin),
      Row(
        children: [
          const Icon(Icons.grade, color: Colors.yellow),
          const Icon(Icons.grade, color: Colors.yellow),
          const Icon(Icons.grade, color: Colors.yellow),
          const Icon(Icons.grade, color: Colors.yellow),
          const Icon(Icons.grade, color: Colors.grey),
          const SizedBox(width: AppConstant.defaultWidth),
          Text('4.9 [229 Reviews]',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(width: AppConstant.defaultWidthMin),
        ],
      ),
      const SizedBox(height: AppConstant.defaultHeight),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  color: Colors.pink.shade300,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: AppConstant.defaultWidthMin),
              Text(
                '2 Kg',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: AppConstant.defaultWidthMin),
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  color: Colors.pink.shade300,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppConstant.defaultHeight),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: ' \$',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.pink.shade300)),
              TextSpan(
                  text: '14,60',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ]),
          ),
        ],
      ),
      const SizedBox(height: AppConstant.defaultHeight),
      Text(
          "The best sorbets come from the best fruits. That's why we hand-pick heritage raspberriest and combine them with the sweetest amd öpst juice stawberries.",
          style: Theme.of(context).textTheme.headline6),
      const SizedBox(height: AppConstant.defaultHeight),
      SizedBox(
        width: deviceSize.width,
        height: deviceSize.height * 0.07,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.pink.shade300,
              borderRadius: const BorderRadius.all(
                  Radius.circular(AppConstant.defaultBorderRadius))),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Add to Card',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:icecreamui/constant/text_constant.dart';

class ProfilNameAndPhohtoCard extends StatelessWidget {
  const ProfilNameAndPhohtoCard({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TextConstant.profilName,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              TextConstant.description,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        const CircleAvatar(
          child: Icon(Icons.person),
        ),
      ],
    );
  }
}

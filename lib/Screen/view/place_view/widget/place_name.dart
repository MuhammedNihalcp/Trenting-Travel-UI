import 'package:flutter/material.dart';

import 'package:tranting_travel_ui/core/size/sizes.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Lalakhal',
          style: homeText,
        ),
        Row(
          children: const [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 19,
            ),
            Text('(5.7)'),
          ],
        ),
      ],
    );
  }
}
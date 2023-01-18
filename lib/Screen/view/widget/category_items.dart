import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class CategoryItems extends StatelessWidget {
  CategoryItems({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;
  final categoryImages = [
    'assets/image/Frame 905.png',
    'assets/image/Frame 906.png',
    'assets/image/Frame 907.png',
    'assets/image/Frame 908.png',
  ];
  List<String> categoryNames = [
    'Mountain',
    'Adventure',
    'Beach',
    'City',
  ];

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: height * 0.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categoryImages.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: colorWhite,
                  radius: 35,
                  backgroundImage: AssetImage(categoryImages[index]),
                ),
                kHeight5,
                Text(
                  categoryNames[index],
                  style: const TextStyle(color: colorGrey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

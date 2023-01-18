import 'package:flutter/material.dart';

import 'package:tranting_travel_ui/Screen/view/widget/boy_images.dart';
import 'package:tranting_travel_ui/Screen/view/widget/category_items.dart';
import 'package:tranting_travel_ui/Screen/view/widget/personal_details.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              kHeight10,
              const PersonalDetails(),
              kHeight5,
              BoyImageWidget(
                width: width,
                height: height,
              ),
              kHeight10,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  children: const [
                    Text(
                      'Popular Categories',
                      style: homeText,
                    ),
                  ],
                ),
              ),
              kHeight5,
              CategoryItems(
                height: height,
              ),
              kHeight10,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  children: const [
                    Text(
                      'Recommended',
                      style: homeText,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

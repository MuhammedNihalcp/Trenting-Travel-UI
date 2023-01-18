import 'package:flutter/material.dart';

import 'package:tranting_travel_ui/Screen/view/widget/boy_images.dart';
import 'package:tranting_travel_ui/Screen/view/widget/personal_details.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
  final double width;
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
                      style: TextStyle(
                        color: colorBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              kHeight5,
              LimitedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

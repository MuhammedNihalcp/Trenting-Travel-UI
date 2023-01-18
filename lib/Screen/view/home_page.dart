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
  final categoryImages = [''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
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
            const Text(
              'Popular Categories',
              style: TextStyle(
                color: colorBlack,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // LimitedBox(
            //   maxHeight: height * 0.1,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: List.generate(length, (index) => null),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

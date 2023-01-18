import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

import 'package:tranting_travel_ui/Screen/view/widget/boy_images.dart';
import 'package:tranting_travel_ui/Screen/view/widget/carousal_text.dart';
import 'package:tranting_travel_ui/Screen/view/widget/carousal_widget.dart';
import 'package:tranting_travel_ui/Screen/view/widget/category_items.dart';
import 'package:tranting_travel_ui/Screen/view/widget/category_text.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
                CategoryText(width: width),
                kHeight5,
                CategoryItems(
                  width: width,
                  height: height,
                ),
                kHeight10,
                CarousalText(width: width),
                kHeight10,
                CarousalWidget(
                  width: width,
                  height: height,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

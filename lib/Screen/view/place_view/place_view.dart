import 'package:flutter/material.dart';
import 'package:tranting_travel_ui/Screen/view/place_view/widget/more_images.dart';
import 'package:tranting_travel_ui/Screen/view/place_view/widget/place_description.dart';
import 'package:tranting_travel_ui/Screen/view/place_view/widget/place_name.dart';
import 'package:tranting_travel_ui/Screen/view/place_view/widget/product_main_image.dart';
import 'package:tranting_travel_ui/Screen/view/widget/product_bottom_nav.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class ScreenPlaceView extends StatelessWidget {
  ScreenPlaceView({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;
  final placeImages = [
    'assets/image/category.png',
    'assets/image/category2.png',
    'assets/image/category3.png',
    'assets/image/category4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductMainImage(height: height),
                kHeight20,
                const ProductName(),
                kHeight10,
                const PlaceDescription(),
                kHeight10,
                const Text(
                  'More Images',
                  style: TextStyle(
                    color: colorBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MoreImageWidget(
                  height: height,
                  placeImages: placeImages,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ProductBottomNev(
        width: width,
        height: height,
      ),
    );
  }
}






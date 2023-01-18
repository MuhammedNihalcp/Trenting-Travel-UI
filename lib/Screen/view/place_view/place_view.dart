import 'package:flutter/material.dart';
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
                Row(
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
                ),
                kHeight10,
                const Text(
                  'Udaipur, also known as the City of Lakes, is the crown jewel of the state of Rajasthan. It is surrounded by the beautiful Aravalli Hills',
                  style: TextStyle(
                    color: colorGrey,
                    fontSize: 16,
                  ),
                ),
                kHeight10,
                const Text(
                  'More Images',
                  style: TextStyle(
                    color: colorBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                LimitedBox(
                  maxHeight: height * 0.15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      placeImages.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                placeImages[index],
                              ),
                            ),
                            kHeight5,
                          ],
                        ),
                      ),
                    ),
                  ),
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



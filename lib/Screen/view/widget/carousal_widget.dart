import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranting_travel_ui/Screen/view/place_view/place_view.dart';

import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

// ignore: must_be_immutable
class CarousalWidget extends StatelessWidget {
  CarousalWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  final carouselImages = [
    'assets/image/Frame 89.png',
    'assets/image/Frame 89 (1).png',
    'assets/image/Frame 89 (2).png'
  ];

  List<String> carousalNames = [
    'Sundarban',
    'Debtakhum',
    'Chimbuk Hill',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: carouselImages.length,
      itemBuilder: (context, index, realIndex) => GestureDetector(
        onTap: () {
          Get.to(() => ScreenPlaceView(
                width: width,
                height: height,
              ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width * 0.8,
              height: height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(carouselImages[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                carousalNames[index],
                style: homeText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                  const Text(
                    '\$2,999',
                    style: TextStyle(color: colorGrey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      options: CarouselOptions(
        height: height * 0.48,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enableInfiniteScroll: false,
      ),
    );
  }
}

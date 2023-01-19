import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranting_travel_ui/Screen/view/place_view/place_view.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

// ignore: must_be_immutable
class ScreenCategory extends StatelessWidget {
  ScreenCategory({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;

  final gridImage = [
    'assets/image/ladaku.png',
    'assets/image/Frame 89.png',
    'assets/image/Frame 89 (1).png',
    'assets/image/Frame 89 (2).png',
    'assets/image/category2.png',
    'assets/image/category.png',
    'assets/image/category3.png',
    'assets/image/category4.png',
  ];
  List<String> placeDetails = [
    'Udaipur, also known as the City of Lakes, is the crown jewel of the state of Rajasthan. It is surrounded by the beautiful Aravalli Hills',
    'The moment you set foot in Jaipur, you will feel like everything has come straight out of the pages of some epic novel.',
    'Lagoons of crystal clear water and scenic beaches topped with a little bit of history make Andaman and Nicobar one of the most perfect choices for an enjoyable',
    'A city as old as time itself. A city that has stayed in place and watched as the world has turned and the tides have changed. A city that has stood the test of time for thousands of years',
    'Widely considered to be the best place to visit in India among youths, Goa is the epitome of tourism in India with one of the best beaches, food and nightlife',
    'Home to one of the 7 wonders of the world, the Taj Mahal, Agra is a sneak peek into the architectural history with other structures',
    'The idyllic hill station Munnar - famous for its tea estates, exotic lush greenery and craggy peaks,',
    'aw-dropping locales, mesmerising sunrises, the untouched beauty of the hills, the old-world charm of the past, and the welcoming smiles of the local people',
  ];
  List<String> placeName = [
    ' City Palace, Udaipur',
    ' Amer Fort',
    'Cellular Jail',
    ' Kashi Vishwanath Temple',
    ' Calangute Beach',
    ' Shopping in Agra',
    ' Munnar Tea Plantations ',
    ' Om Beach',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(
            color: colorBlack,
          ),
        ),
        centerTitle: true,
        backgroundColor: backgroundC,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings,
              color: colorBlack,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 1 / 1.5),
          itemBuilder: (BuildContext ctx, int index) {
            return SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() =>
                                ScreenPlaceView(width: width, height: height));
                          },
                          child: Container(
                            width: width * 0.5,
                            height: height * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: colorWhite,
                              image: DecorationImage(
                                image: AssetImage(gridImage[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      placeName[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kHeight10,
                    Text(
                      placeDetails[index],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: gridImage.length,
        ),
      ),
    );
  }
}

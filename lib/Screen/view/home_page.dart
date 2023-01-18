import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
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
        child: Column(
          children: [
            kHeight10,
            const PersonalDetails(),
            kHeight5,
            CustomCard(
              width: width * 0.9,
              height: height * 0.35,
              elevation: 0,
              child: Stack(
                children: [
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Image(
                      image: AssetImage('assets/image/Rectangle 10.png'),
                    ),
                  ),
                  Positioned(
                    top: height * 0.11,
                    left: width * 0.13,
                    child: const Image(
                      image: AssetImage('assets/image/Frame.png'),
                    ),
                  ),
                  Positioned(
                    left: width * 0.28,
                    child: const Image(
                      image: AssetImage('assets/image/Frame-1.png'),
                    ),
                  ),
                  Positioned(
                    top: height * 0.16,
                    left: width * 0.45,
                    child: const Image(
                      image: AssetImage('assets/image/Frame-2.png'),
                    ),
                  ),
                  Positioned(
                    left: width * 0.1,
                    child:const Image(
                      image: AssetImage('assets/image/Frame-3.png'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

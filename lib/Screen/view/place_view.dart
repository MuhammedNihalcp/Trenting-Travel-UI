import 'package:flutter/material.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';

class ScreenPlaceView extends StatelessWidget {
  const ScreenPlaceView({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/ladaku.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      )),
    );
  }
}

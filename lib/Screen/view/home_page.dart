import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:tranting_travel_ui/Screen/view/widget/personal_details.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key, required this.width,required this.height,}):super(key: key);
final double width;
final double height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: Column(
          children:  [
            kHeight10,
            const PersonalDetails(),
            CustomCard(
              width: width * 0.8,
              height: height * 0.3,
              color: Colors.white,
              elevation: 0,
              child: Stack(children: [
                Image(image: AssetImage('assets/image/Rectangle 10.png'),),
              ],),
            )
          ],
        ),
      ),
    );
  }
}

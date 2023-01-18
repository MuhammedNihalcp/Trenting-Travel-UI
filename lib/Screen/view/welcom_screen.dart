import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';

class ScreenWelcome extends StatelessWidget {
  ScreenWelcome({super.key});
  final width = Get.size.width;
  final height = Get.size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/welcom_page_image.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text("Let's Start"),
                        Icon(Icons.arrow_forward),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}

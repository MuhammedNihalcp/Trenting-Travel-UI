import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

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
              bottom: height * 0.1,
              left: width * 0.2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonC,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    minimumSize: Size(width * 0.6, height * 0.1)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Let's Start",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    kWidth10,
                    Icon(Icons.arrow_forward_rounded),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

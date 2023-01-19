import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class ProductBottomNev extends StatelessWidget {
  const ProductBottomNev({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height * 0.1,
      color: colorWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Total Price',
                  style: TextStyle(fontSize: 18),
                ),
                kHeight5,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '\$  ', style: TextStyle(color: buttonC)),
                      TextSpan(
                        text: '2,999',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonC,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minimumSize: Size(width * 0.45, height * 0.09),
                ),
                onPressed: () {
                  Get.snackbar(
                    'Success',
                    'Your booking success',
                    colorText: Colors.green,
                    backgroundColor: colorWhite
                  );
                },
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

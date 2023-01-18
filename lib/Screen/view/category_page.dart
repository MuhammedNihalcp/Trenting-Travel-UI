import 'package:flutter/material.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
          child: (GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1 / 1.7),
        itemBuilder: (BuildContext ctx, int index) {
          return SizedBox(
            // width: width * 0.1,
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: width * 0.5,
                          height: height * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: colorWhite,
                            image: DecorationImage(
                              image: AssetImage(gridImage[index]),
                              // fit: BoxFit.cover,
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
                    '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  kHeight10,
                  Row(
                    children: [
                      Text(
                        "",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: gridImage.length,
      ))),
    );
  }
}

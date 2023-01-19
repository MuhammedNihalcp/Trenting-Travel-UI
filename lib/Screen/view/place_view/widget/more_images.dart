import 'package:flutter/widgets.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class MoreImageWidget extends StatelessWidget {
  const MoreImageWidget({
    Key? key,
    required this.height,
    required this.placeImages,
  }) : super(key: key);

  final double height;
  final List<String> placeImages;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
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
    );
  }
}
import 'package:flutter/widgets.dart';
import 'package:tranting_travel_ui/core/size/sizes.dart';

class CarousalText extends StatelessWidget {
  const CarousalText({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        children: const [
          Text(
            'Recommended',
            style: homeText,
          ),
        ],
      ),
    );
  }
}

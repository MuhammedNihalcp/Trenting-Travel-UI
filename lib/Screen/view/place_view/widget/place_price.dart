import 'package:flutter/widgets.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';

class PlacePrice extends StatelessWidget {
  const PlacePrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
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
    );
  }
}
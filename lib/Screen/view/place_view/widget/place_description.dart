import 'package:flutter/material.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';

class PlaceDescription extends StatelessWidget {
  const PlaceDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Udaipur, also known as the City of Lakes, is the crown jewel of the state of Rajasthan. It is surrounded by the beautiful Aravalli Hills',
      style: TextStyle(
        color: colorGrey,
        fontSize: 16,
      ),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';

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
      child: Row(
        children: [
          Column(
            children: const [
              Text('Total Price'),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '\$',style: TextStyle(color: buttonC)),
                    TextSpan(
                      text: '2999',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                   
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

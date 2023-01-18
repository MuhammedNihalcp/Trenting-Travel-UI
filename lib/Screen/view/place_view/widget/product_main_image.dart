import 'package:flutter/widgets.dart';

class ProductMainImage extends StatelessWidget {
  const ProductMainImage({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height * 0.55,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/image/ladaku.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
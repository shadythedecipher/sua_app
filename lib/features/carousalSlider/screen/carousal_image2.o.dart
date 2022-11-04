import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/GlobalVariables.dart';

class CarouselImageF extends StatelessWidget {
  const CarouselImageF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariables.carouselImagesS
          .map((item) => Center(
                child: Image.asset(
                  item,
                  fit: BoxFit.contain,
                  height: 200,
                ),
              ))
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        height: 200,
        enlargeCenterPage: true,
      ),
    );
  }
}

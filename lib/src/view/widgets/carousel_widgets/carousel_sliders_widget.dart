import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
   CustomCarouselSlider({
    Key? key,
    required this.onPageChanged,
    required this.initialPage,
  }) : super(key: key);

  Function(int, CarouselPageChangedReason)? onPageChanged;
  final int initialPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: [
          "assets/Group 1.png",
          "assets/Mask group.png",
          "assets/Mask group (1).png",
        ].map((e) {
          return Builder(builder: (BuildContext context) {
            return SizedBox(
              width: double.maxFinite,
              child: Image.asset(e, fit: BoxFit.cover),
            );
          });
        }).toList(),
        options: CarouselOptions(
          initialPage: initialPage,
          onPageChanged: onPageChanged,
          viewportFraction: 1.0,
          height: 400,
          autoPlay: true,
        ),
      ),
    );
  }
}

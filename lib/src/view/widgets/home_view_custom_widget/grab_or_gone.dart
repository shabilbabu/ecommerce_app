import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../card_custom_widgets/vertical_custom_card.dart';

class GrabOrGone extends StatelessWidget {
  GrabOrGone({Key? key}) : super(key: key);

  List<String> images = [
    'assets/Rectangle 2449-1.png',
    'assets/Rectangle 2449-2.png',
    'assets/Rectangle 2449-3.png',
    'assets/Rectangle 2449-4.png',
    'assets/Rectangle 2449.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
          color: HexColor('#E1E1F6'),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20), topLeft: Radius.circular(20))),
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomCardVertical(images: images[index]);
        },
      ),
    );
  }
}

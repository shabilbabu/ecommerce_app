import 'package:dikazo/src/view/widgets/card_custom_widgets/vertical_custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedForYou extends StatelessWidget {
   RecommendedForYou({Key? key}) : super(key: key);

  List<String> imageList = ['assets/31.png','assets/32.png','assets/33.png','assets/34.png','assets/35.png'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomCardVertical(images: imageList[index]);
        },
      ),
    );
  }
}
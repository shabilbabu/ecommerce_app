import 'package:dikazo/src/view/widgets/card_custom_widgets/vertical_custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularAndTrending extends StatelessWidget {
   PopularAndTrending({Key? key}) : super(key: key);

  List<String> imageList = ['assets/11.png','assets/12.png','assets/13.png','assets/14.png','assets/15.png'];

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
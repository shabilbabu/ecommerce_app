import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomCarasoulSlider2 extends StatefulWidget {
  const CustomCarasoulSlider2({Key? key}) : super(key: key);

  @override
  State<CustomCarasoulSlider2> createState() => _CustomCarasoulSlider2State();
}

class _CustomCarasoulSlider2State extends State<CustomCarasoulSlider2> {
  int pageIndex = 0;

  List<Widget> demo = [
    Image.asset('assets/Frame 19064.png',fit: BoxFit.cover,),
    Image.asset('assets/Frame 19065.png',fit: BoxFit.cover,),
    Image.asset('assets/Frame 19066.png',fit: BoxFit.cover,),
    Image.asset('assets/Frame 19067.png',fit: BoxFit.cover,),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: PageView(
            children: demo,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 110.h,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CarouselIndicator(
              height: 10,
              width: 10,
              activeColor: Colors.white,
              color: HexColor('##D2CFEA'),
              count: demo.length,
              index: pageIndex,
            ),
          ),
        ),
      ],
    );
  }
}

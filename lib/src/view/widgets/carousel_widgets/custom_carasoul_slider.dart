import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomCarasoulSlider extends StatefulWidget {
  const CustomCarasoulSlider({Key? key}) : super(key: key);

  @override
  State<CustomCarasoulSlider> createState() => _CustomCarasoulSliderState();
}

class _CustomCarasoulSliderState extends State<CustomCarasoulSlider> {
  int pageIndex = 0;

  List<Widget> demo = [
   Image.asset('assets/Frame 18934 (1).png',fit: BoxFit.cover,),
   Image.asset('assets/Screenshot from 2022-10-26 15-46-46.png',fit: BoxFit.cover,),
   Image.asset('assets/Screenshot from 2022-10-26 15-47-18.png',fit: BoxFit.cover,),

  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 175.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100)
          ),
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
          height: 160.h,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CarouselIndicator(
              height: 10,
              width: 20,
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

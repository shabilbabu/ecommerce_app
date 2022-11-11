import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeContainterList extends StatelessWidget {
  HomeContainterList({Key? key}) : super(key: key);

  List<String> textList = [
    'Electronics',
    "Men's",
    "Women's",
    "Kids",
    "Beuty",
    "Home",
    "Beuty",
    "Healthcare",
    "Kid's",
  ];

  List<String> imageList = [
    "assets/Ellipse 89.png",
    "assets/Ellipse 89-1.png",
    "assets/Ellipse 89-2.png",
    "assets/Ellipse 89-3.png",
    "assets/Ellipse 89-4.png",
    "assets/Ellipse 89-5.png",
    "assets/Ellipse 89-6.png",
    "assets/Ellipse 89-7.png",
    "assets/Ellipse 89-8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: HexColor('##D2CFEA'),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 3.w,),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.h,
                  width: 50.h,
                  decoration: BoxDecoration(
    
                    borderRadius: BorderRadius.circular(200),
                    image: DecorationImage(
                      image: AssetImage(imageList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(textList[index],
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}

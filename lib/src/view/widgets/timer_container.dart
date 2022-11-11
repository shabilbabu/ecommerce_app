import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerContainer extends StatelessWidget {
  const TimerContainer(
      {Key? key,
      required this.textColor,
      required this.containerColor,
      required this.opacity,
      required this.semiColomn,
      required this.fontSize,
      required this.semiColomnFontSize,
      required this.containerHight,
      required this.containerWidth})
      : super(key: key);

  final Color textColor;
  final Color containerColor;
  final double opacity;
  final Color semiColomn;
  final double fontSize;
  final double semiColomnFontSize;
  final double containerHight;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 5.h,
        ),
        Container(
          height: containerHight.h,
          width: containerWidth.w,
          decoration: BoxDecoration(
              color: containerColor.withOpacity(opacity),
               borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            '06',
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            )
          )),
        ),
        SizedBox(
          width: 7.h,
        ),
        Text(
          ':',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: semiColomnFontSize,
              color: semiColomn),
        ),
        SizedBox(
          width: 7.h,
        ),
        Container(
          height: containerHight.h,
          width: containerWidth.w,
          decoration: BoxDecoration(
              color: containerColor.withOpacity(opacity),
               borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            '50',
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            )
          )),
        ),
        SizedBox(
          width: 7.h,
        ),
        Text(
          ':',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: semiColomnFontSize,
            color: semiColomn,
          ),
        ),
        SizedBox(
          width: 7.h,
        ),
        Container(
          height: containerHight,
          width: containerWidth,
          decoration: BoxDecoration(
              color: containerColor.withOpacity(opacity),
               borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            '48',
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            )
          )),
        ),
      ],
    );
  }
}

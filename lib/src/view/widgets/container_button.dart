import 'package:dikazo/src/utils/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ContainerButton extends StatelessWidget {
  ContainerButton(
      {Key? key,
      required this.text,
      this.height,
      this.width,
      this.fontSize,
      this.weight,})
      : super(key: key);

  String text;
  double? height;
  double? width;
  double? fontSize;
  FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: HexColor(primaryColor)),
        borderRadius: BorderRadius.circular(20.r),
        color: HexColor(
          primaryColor,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontSize: fontSize,
            fontWeight: weight,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

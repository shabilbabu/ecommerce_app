import 'package:dikazo/src/utils/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ContainerButtonWithBorder extends StatelessWidget {
  const ContainerButtonWithBorder({
    Key? key,
    required this.heigt,
     this.width,
    required this.fontsize,
    required this.weight,
    required this.text,
  }) : super(key: key);

  final double heigt;
  final double? width;
  final double fontsize;
  final FontWeight weight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigt,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: HexColor(primaryColor), width: 2),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontSize: fontsize,
            fontWeight: weight,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

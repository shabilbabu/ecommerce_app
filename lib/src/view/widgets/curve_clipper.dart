


import 'package:dikazo/src/utils/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 1.3);
    path.quadraticBezierTo(
        size.width / 1.8, size.height, size.width, size.height / 1.2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }}



class TestingDecorations extends StatelessWidget {
  final CustomClipper<Path>? clipper;
  final Color color;

  const TestingDecorations(
      {Key? key, required this.clipper, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        decoration: BoxDecoration(
            borderRadius:  BorderRadius.only(
                // bottomLeft: Radius.circular(70.0),
                bottomRight: Radius.circular(35.0.r)),
            color: HexColor(primaryColor)),
        height: 230.h,
      ),
    );
  }
}
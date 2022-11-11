import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.text, required this.color, required this.fontsize, required this.weight,this.textdirection, this.textalign}) : super(key: key);

  final String text;
  final Color color;
  final double fontsize;
  final FontWeight weight;
  final TextDirection? textdirection;
  final TextAlign? textalign;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalign,
      style: GoogleFonts.inter(
        color: color,
        fontSize: fontsize,
        fontWeight: weight,
      )
    );
  }
}

class EndsInTitle extends StatelessWidget {
  const EndsInTitle({Key? key, required this.color, required this.fontSize})
      : super(key: key);

  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ends in',
      
      style: GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      )
    );
  }
}

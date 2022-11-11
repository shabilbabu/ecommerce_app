import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LimitedOffer extends StatelessWidget {
  const LimitedOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185.h,
      width: double.infinity.w,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 270.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor('#A3A3A3')),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: Container(
                      height: 120.h,
                      width: MediaQuery.of(context).size.width.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/Rectangle 2494.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                   Text(
                    'Summerwear',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '₹ 12,000',
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.inter(
                           color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Container(
                        height: 15.h,
                        width: 2.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                       Text(
                        'Extra ₹1,000 offer',
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 13,
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

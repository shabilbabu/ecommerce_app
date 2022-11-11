import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HorizontalCustomCardWithoutMinusAndPlus extends StatelessWidget {
  const HorizontalCustomCardWithoutMinusAndPlus({Key? key,required this.images, required this.colorList, required this.sizedlist,required this.countText}) : super(key: key);

  final String images;
  final Color colorList;
  final String sizedlist;
  final String countText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              height: 120.h,
              width: 120.w,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                      image: AssetImage(images), fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 18.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '24%Off',
                        style: GoogleFonts.inter(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, con orem ipsum dolor sit',
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.h,
                        decoration: BoxDecoration(
                            color: colorList,
                            borderRadius: BorderRadius.circular(100.r)),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      TitleWidget(
                          text: 'Color',
                          color: Colors.black,
                          fontsize: 12.sp,
                          weight: FontWeight.w500),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 18.h,
                        width: 2.w,
                        color: const Color.fromARGB(255, 209, 209, 209),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      TitleWidget(
                          text: 'Size',
                          color: Colors.black,
                          fontsize: 12.sp,
                          weight: FontWeight.w500),
                      SizedBox(
                        width: 5.w,
                      ),
                      TitleWidget(
                          text: sizedlist,
                          color: Colors.black,
                          fontsize: 13.sp,
                          weight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      TitleWidget(
                          text: '₹ 9,999',
                          color: HexColor(primaryColor),
                          fontsize: 16.sp,
                          weight: FontWeight.w600),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '₹1,200',
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: HexColor('#F4F4F4'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TitleWidget(
                              text: countText,
                              color: Colors.black,
                              fontsize: 13.sp,
                              weight: FontWeight.w500),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

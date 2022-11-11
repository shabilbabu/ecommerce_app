import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CardVerticalWithRemove extends StatelessWidget {
  CardVerticalWithRemove({Key? key, required this.images}) : super(key: key);

  String images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(

                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images), fit: BoxFit.cover),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusDirectional.only(
                                        topStart: Radius.circular(40.r),
                                        topEnd: Radius.circular(40.r)),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.w, vertical: 20.h),
                                      child: SizedBox(
                                        height: 200.h,
                                        child: Column(
                                          children: [
                                            SizedBox(height: 30.h),
                                            Text(
                                              'Are you sure you want remove  this product?',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.inter(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(height: 60.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
                                                    height: 50.h,
                                                    width: 150.w,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r),
                                                    ),
                                                    child: Center(
                                                        child: TitleWidget(
                                                            text: 'Cancel',
                                                            color: Colors.black,
                                                            fontsize: 15.sp,
                                                            weight: FontWeight
                                                                .w600)),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
                                                    height: 50.h,
                                                    width: 120.w,
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r),
                                                    ),
                                                    child: Center(
                                                        child: TitleWidget(
                                                            text: 'Yes, Remove',
                                                            color: Colors.white,
                                                            fontsize: 15.sp,
                                                            weight: FontWeight
                                                                .w600)),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Image(
                                  image: const AssetImage('assets/x.png'),
                                  height: 15.h,
                                  width: 15.w),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '₹ 1,200',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: const Color.fromARGB(255, 121, 30, 233)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '₹1,200',
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: HexColor(primaryColor)),
                ),
                child: Center(
                    child: TitleWidget(
                        text: 'Add to Cart',
                        color: HexColor(primaryColor),
                        fontsize: 13.sp,
                        weight: FontWeight.w500)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../utils/constents.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.r),
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Icon(Icons.arrow_back_ios_new_rounded,
                          size: 20.sp, color: Colors.black)),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              TitleWidget(
                  text: 'Description',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/401.png',
                          height: 66.h,
                          width: 66.w,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Praizy Times Analog watch for men',
                                // maxLines: 2,
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  TitleWidget(
                                      text: '₹ 1,200',
                                      color: HexColor(primaryColor),
                                      fontsize: 13.sp,
                                      weight: FontWeight.w600),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  const Text(
                                    '₹ 1,200',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TitleWidget(
                        text: 'Details',
                        color: Colors.black,
                        fontsize: 15.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 150.h,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              SizedBox(width: 10.w),
                              Container(
                                height: 5.h,
                                width: 5.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              TitleWidget(
                                  text:
                                      'Lorem ipsum dolor sit amet, consectetur ',
                                  color: Colors.grey.withOpacity(0.8),
                                  fontsize: 14.sp,
                                  weight: FontWeight.w400),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TitleWidget(
                        text: 'More info',
                        color: Colors.black,
                        fontsize: 15.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    TitleWidget(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, aliquet et egestas eget elit in. Condimentum facilisis dis nunc tristiq, ',
                        color: Colors.grey.withOpacity(0.8),
                        fontsize: 14.sp,
                        weight: FontWeight.w400),
                    SizedBox(
                      height: 20.h,
                    ),
                    TitleWidget(
                        text: 'More info',
                        color: Colors.black,
                        fontsize: 15.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    TitleWidget(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, aliquet et egestas eget elit in. Condimentum facilisis dis nunc tristiq, ',
                        color: Colors.grey.withOpacity(0.8),
                        fontsize: 14.sp,
                        weight: FontWeight.w400),
                    SizedBox(
                      height: 20.h,
                    ),
                    TitleWidget(
                        text: 'More info',
                        color: Colors.black,
                        fontsize: 15.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    TitleWidget(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, aliquet et egestas eget elit in. Condimentum facilisis dis nunc tristiq, ',
                        color: Colors.grey.withOpacity(0.8),
                        fontsize: 14.sp,
                        weight: FontWeight.w400),
                    SizedBox(
                      height: 20.h,
                    ),
                    TitleWidget(
                        text: 'More info',
                        color: Colors.black,
                        fontsize: 15.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    TitleWidget(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, aliquet et egestas eget elit in. Condimentum facilisis dis nunc tristiq, ',
                        color: Colors.grey.withOpacity(0.8),
                        fontsize: 14.sp,
                        weight: FontWeight.w400),
                    SizedBox(
                      height: 20.h,
                    ),
                    TitleWidget(
                        text: 'More info',
                        color: Colors.black,
                        fontsize: 15.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    TitleWidget(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, aliquet et egestas eget elit in. Condimentum facilisis dis nunc tristiq, ',
                        color: Colors.grey.withOpacity(0.8),
                        fontsize: 14.sp,
                        weight: FontWeight.w400),
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 60.h,
                          width: 175.w,
                          decoration: BoxDecoration(
                              color: HexColor(primaryColor),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              TitleWidget(
                                  text: 'Add to cart',
                                  color: Colors.white,
                                  fontsize: 14.sp,
                                  weight: FontWeight.w500)
                            ],
                          )),
                    ),
                    Container(
                        height: 60.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            color: HexColor('#E2E1FE'),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TitleWidget(
                                text: 'Buy Now',
                                color: HexColor(primaryColor),
                                fontsize: 14.sp,
                                weight: FontWeight.w500)
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

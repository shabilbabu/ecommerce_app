import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


class ReviewAndRating extends StatelessWidget {
  const ReviewAndRating({Key? key}) : super(key: key);

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
                  text: 'Reviews & Ratings',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600)
            ],
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  
                  children: [
                    const CustomTextFormField(fillcolor: Colors.white,prefixicon: Icon(Icons.comment,color: Color.fromARGB(255, 196, 196, 196),),hintText: 'Write Review',),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) => SizedBox(height: 30.h),
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return 
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/reviewimage.png',height: 39.h,width: 39.w,),
                          SizedBox(width: 15.w,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TitleWidget(text: 'Deva', color: Colors.black, fontsize: 14.sp, weight: FontWeight.w600),
                                    Container(
                                    height: 16.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromARGB(255, 100, 212, 104)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                         const Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                        
                                         Text(
                                          '4.4',
                                          style: GoogleFonts.inter(
                                              fontSize: 8, color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                TitleWidget(text: '10 Months ago', color: const Color.fromARGB(255, 196, 196, 196), fontsize: 13.sp, weight: FontWeight.w400),
                                SizedBox(height: 10.h,),
                                TitleWidget(text: '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt ac nibh turpis ullamcorper. Nulla integer sapien vel massa ultrices. Sit elementum lobortis risus, vel risus at. In eu in nec sollicitudin amet.''', color: const Color.fromARGB(255, 196, 196, 196), fontsize: 14.sp, weight: FontWeight.w400),
                              ],
                            ),
                          )
                        ],
                      );
                        },
                      ),
                    ),
                    SizedBox(height: 100.h,),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
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
              ),
          ],
        ),
      ),
    );
  }
}
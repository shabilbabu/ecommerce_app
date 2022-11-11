import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/bottom_view/bottom_view.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../widgets/title_widget.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 40.h,
                  width: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(200.r),
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      size: 20.sp, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 15.h,
              ),
              TitleWidget(
                  text: 'Order details',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Center(
                    child: Image.asset('assets/tick icon.png',
                        height: 70.h, width: 70.w, fit: BoxFit.fill)),
                SizedBox(
                  height: 20.h,
                ),
                TitleWidget(
                    text: 'Successfull',
                    color: Colors.black,
                    fontsize: 18.sp,
                    weight: FontWeight.w600),
                SizedBox(
                  height: 10.h,
                ),
                TitleWidget(
                    text: 'Your order #BE12345 has been placed.',
                    color: Colors.black,
                    fontsize: 13.sp,
                    weight: FontWeight.w500),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "We sent an email to orders@banuelson.com with your order confirmation and bill.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TitleWidget(
                    text: 'Time placed: 17/02/2020 12:45 CEST',
                    color: Colors.black,
                    fontsize: 13.sp,
                    weight: FontWeight.w400),
                SizedBox(
                  height: 25.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleWidget(
                        text: 'Shipping',
                        color: Colors.black,
                        fontsize: 18.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(
                              text: 'Home',
                              color: Colors.black,
                              fontsize: 14.sp,
                              weight: FontWeight.w600),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Espresso Street, No 20 Gotham, Middle Earth 15289',
                            style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
          
                        ],
                      ),
                    ),
                     SizedBox(
                  height: 25.h,
                ),
                TitleWidget(
                    text: 'Billing',
                    color: Colors.black,
                    fontsize: 18.sp,
                    weight: FontWeight.w600),
                SizedBox(
                  height: 10.h,
                ),
                 Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(
                              text: 'Home',
                              color: Colors.black,
                              fontsize: 14.sp,
                              weight: FontWeight.w600),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Espresso Street, No 20 Gotham, Middle Earth 15289',
                            style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
          
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    TitleWidget(
                    text: 'Order',
                    color: Colors.black,
                    fontsize: 18.sp,
                    weight: FontWeight.w600),
                    SizedBox(height: 10.h,),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: HexColor(primaryColor)),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/shipping.png',height: 30.h,width: 30.w,),
                          SizedBox(width: 5.w,),
                          TitleWidget(text: 'Arrives by Oct 22nd to Nov 9th', color: HexColor(primaryColor), fontsize: 13.sp, weight: FontWeight.w600)
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BottomView()));
                      },
                      child: ContainerButton(text: 'Back to shopping',fontSize: 14.sp,height: 60.h,weight: FontWeight.w600,))
                  ],
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/account_view/account_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/title_widget.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AccountView()));
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
              TitleWidget(
                  text: 'Wallet',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600),
              SizedBox(
                width: 40.w,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 70.w, vertical: 60.h),
                  decoration: BoxDecoration(
                    color: HexColor(primaryColor),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleWidget(
                          text: 'Your current balance',
                          color: Colors.white,
                          fontsize: 12.sp,
                          weight: FontWeight.w400),
                      SizedBox(height: 5.h),
                      TitleWidget(
                          text: '₹ 9,999.90',
                          color: Colors.white,
                          fontsize: 18.sp,
                          weight: FontWeight.w600)
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 70.w, vertical: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r)),
                    color: HexColor('#8783FD'),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline,
                          size: 25.sp, color: Colors.white),
                      SizedBox(width: 5.w),
                      TitleWidget(
                          text: 'Charge balance',
                          color: Colors.white,
                          fontsize: 13.sp,
                          weight: FontWeight.w600)
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                TitleWidget(
                    text: 'Wallet history',
                    color: Colors.black,
                    fontsize: 18.sp,
                    weight: FontWeight.w600),
                SizedBox(height: 15.h),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30.sp,
                            color: Colors.grey[400],
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            children: [
                              TitleWidget(
                                  text: 'Purchase',
                                  color: Colors.black,
                                  fontsize: 15.sp,
                                  weight: FontWeight.w600),
                              SizedBox(height: 5.h),
                              TitleWidget(
                                  text: 'Jun 12, 2022',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500)
                            ],
                          ),
                          const Spacer(),
                          TitleWidget(
                              text: '-₹9,999.00',
                              color: Colors.red,
                              fontsize: 15.sp,
                              weight: FontWeight.w600),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 1.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 10.h),
                      customWidget('assets/01.png'),
                      SizedBox(height: 15.h),
                      customWidget('assets/02.png')
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30.sp,
                            color: Colors.grey[400],
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            children: [
                              TitleWidget(
                                  text: 'Return',
                                  color: Colors.black,
                                  fontsize: 15.sp,
                                  weight: FontWeight.w600),
                              SizedBox(height: 5.h),
                              TitleWidget(
                                  text: 'Jun 12, 2022',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500)
                            ],
                          ),
                          const Spacer(),
                          TitleWidget(
                              text: '-₹9,999.00',
                              color: Colors.red,
                              fontsize: 15.sp,
                              weight: FontWeight.w600),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 1.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 10.h),
                      customWidget('assets/04.png'),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30.sp,
                            color: Colors.grey[400],
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            children: [
                              TitleWidget(
                                  text: 'Return',
                                  color: Colors.black,
                                  fontsize: 15.sp,
                                  weight: FontWeight.w600),
                              SizedBox(height: 5.h),
                              TitleWidget(
                                  text: 'Jun 12, 2022',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500)
                            ],
                          ),
                          const Spacer(),
                          TitleWidget(
                              text: '-₹9,999.00',
                              color: Colors.green,
                              fontsize: 15.sp,
                              weight: FontWeight.w600),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 1.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 10.h),
                      customWidget('assets/03.png'),
                      SizedBox(height: 15.h),
                      customWidget('assets/05.png'),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30.sp,
                            color: Colors.grey[400],
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            children: [
                              TitleWidget(
                                  text: 'Purchase',
                                  color: Colors.black,
                                  fontsize: 15.sp,
                                  weight: FontWeight.w600),
                              SizedBox(height: 5.h),
                              TitleWidget(
                                  text: 'Jun 12, 2022',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500)
                            ],
                          ),
                          const Spacer(),
                          TitleWidget(
                              text: '-₹9,999.00',
                              color: Colors.green,
                              fontsize: 15.sp,
                              weight: FontWeight.w600),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 1.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 10.h),
                      customWidget('assets/01.png'),
                      SizedBox(height: 15.h),
                      customWidget('assets/06.png'),
                      SizedBox(height: 15.h),
                      customWidget('assets/07.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customWidget(String img) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Image.asset(
            img,
            height: 90.h,
            width: 90.w,
          ),
          SizedBox(
            width: 5.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(
                    text: 'Lipsy London',
                    color: Colors.grey,
                    fontsize: 13.sp,
                    weight: FontWeight.w400),
                SizedBox(height: 5.h),
                Text(
                  'Lorem ipsum dolor sit amet, con orem Lorem ipsum dolor sit amet, con orem',
                  overflow: TextOverflow.visible,
                  maxLines: 1,
                  style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    TitleWidget(
                        text: 'Color',
                        color: Colors.black,
                        fontsize: 12.sp,
                        weight: FontWeight.w300),
                    SizedBox(width: 8.w),
                    Container(
                      height: 20.h,
                      width: 20.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    TitleWidget(
                        text: 'size',
                        color: Colors.black,
                        fontsize: 12.sp,
                        weight: FontWeight.w300),
                    SizedBox(width: 5.w),
                    TitleWidget(
                        text: 'XL',
                        color: Colors.black,
                        fontsize: 13.sp,
                        weight: FontWeight.w600),
                    SizedBox(width: 5.w),
                    Container(
                      height: 15.h,
                      width: 1.w,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 5.w),
                    Expanded(
                      child: TitleWidget(
                          text: 'Quantity',
                          color: Colors.black,
                          fontsize: 12.sp,
                          weight: FontWeight.w300),
                    ),
                    SizedBox(width: 5.w),
                    TitleWidget(
                        text: '2',
                        color: Colors.black,
                        fontsize: 13.sp,
                        weight: FontWeight.w600),
                  ],
                ),
                SizedBox(height: 5.h),
                TitleWidget(
                    text: '₹ 9,999',
                    color: HexColor(primaryColor),
                    fontsize: 14.sp,
                    weight: FontWeight.w600),
                SizedBox(width: 3.w),
              ],
            ),
          )
        ],
      ),
    );
  }
}

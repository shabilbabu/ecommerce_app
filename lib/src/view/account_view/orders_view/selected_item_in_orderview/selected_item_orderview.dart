import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/account_view/orders_view/order_tracking_view/order_tracking_view.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


class SelectedItemInOrderView extends StatelessWidget {
  const SelectedItemInOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.r)),
              child: Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.black, size: 20.sp),
            ),
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
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleWidget(
                          text: 'Order ID - FDS63982201515610',
                          color: Colors.grey,
                          fontsize: 11.sp,
                          weight: FontWeight.w400),
                      SizedBox(height: 5.h),
                      Container(
                        height: 1.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Image.asset(
                            'assets/mac.png',
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
                                        borderRadius:
                                            BorderRadius.circular(100.r),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    TitleWidget(
                                        text: 'size',
                                        color: Colors.black,
                                        fontsize: 12.sp,
                                        weight: FontWeight.w300),
                                    SizedBox(width: 8.w),
                                    TitleWidget(
                                        text: 'XL',
                                        color: Colors.black,
                                        fontsize: 13.sp,
                                        weight: FontWeight.w600),
                                    SizedBox(width: 8.w),
                                    Container(
                                      height: 15.h,
                                      width: 1.w,
                                      color: Colors.grey[300],
                                    ),
                                    SizedBox(width: 8.w),
                                    TitleWidget(
                                        text: 'Quantity',
                                        color: Colors.black,
                                        fontsize: 12.sp,
                                        weight: FontWeight.w300),
                                    SizedBox(width: 8.w),
                                    TitleWidget(
                                        text: '2',
                                        color: Colors.black,
                                        fontsize: 13.sp,
                                        weight: FontWeight.w600),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    TitleWidget(
                                        text: '₹ 9,999',
                                        color: HexColor(primaryColor),
                                        fontsize: 14.sp,
                                        weight: FontWeight.w600),
                                    SizedBox(width: 3.w),
                                    Text(
                                      '₹1,200',
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OrderTrackingView()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleWidget(
                                text: 'Buy it again',
                                color: Colors.black,
                                fontsize: 15.sp,
                                weight: FontWeight.w600),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20.sp,
                              color: Colors.grey[300],
                            )
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 1.h,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey[200],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 20.h,
                                  decoration: BoxDecoration(
                                    color: Colors.green[600],
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                ),
                                Container(
                                  height: 60.h,
                                  width: 1.w,
                                  color: Colors.green[600],
                                ),
                                Container(
                                  height: 20.h,
                                  width: 20.h,
                                  decoration: BoxDecoration(
                                    color: Colors.green[600],
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleWidget(
                                    text: 'Order confirmed',
                                    color: Colors.black,
                                    fontsize: 15.sp,
                                    weight: FontWeight.w600),
                                TitleWidget(
                                    text: 'Wed, 23rd Sep ‘22',
                                    color: Colors.black,
                                    fontsize: 12.sp,
                                    weight: FontWeight.w400),
                                SizedBox(height: 30.h),
                                TitleWidget(
                                    text: 'Delivered',
                                    color: Colors.black,
                                    fontsize: 15.sp,
                                    weight: FontWeight.w600),
                                TitleWidget(
                                    text: 'Your item has been delivered',
                                    color: Colors.black,
                                    fontsize: 12.sp,
                                    weight: FontWeight.w400),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          height: 60.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: HexColor(primaryColor),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.file_download_outlined,
                                color: Colors.grey[200],
                                size: 30.sp,
                              ),
                              SizedBox(width: 5.w),
                              TitleWidget(
                                  text: 'Download invoice',
                                  color: Colors.white,
                                  fontsize: 15.sp,
                                  weight: FontWeight.w600)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                TitleWidget(
                    text: 'Payment Information',
                    color: Colors.black,
                    fontsize: 15.sp,
                    weight: FontWeight.w600),
                SizedBox(height: 15.h),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitleWidget(
                              text: 'Peyment method',
                              color: Colors.black,
                              fontsize: 14.sp,
                              weight: FontWeight.w500),
                          TitleWidget(
                              text: 'BHIM UPI',
                              color: Colors.black,
                              fontsize: 14.sp,
                              weight: FontWeight.w500),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 1.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 15.h),
                      TitleWidget(
                          text:
                              '6-5-22, Plot no.east part Self Finance \nColony, Vanasthalipuram Hyderabadn Telangana \n500070',
                          color: Colors.grey,
                          fontsize: 12.sp,
                          weight: FontWeight.w400),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                TitleWidget(
                    text: 'Shipping details',
                    color: Colors.black,
                    fontsize: 15.sp,
                    weight: FontWeight.w600),
                SizedBox(height: 15.h),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleWidget(
                          text: 'Praveen',
                          color: Colors.grey,
                          fontsize: 12.sp,
                          weight: FontWeight.w400),
                      SizedBox(height: 5.h),
                      TitleWidget(
                          text:
                              '6-5-22, Plot no.east part Self Finance \nColony, Vanasthalipuram Hyderabadn Telangana \n500070',
                          color: Colors.grey,
                          fontsize: 12.sp,
                          weight: FontWeight.w400),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                TitleWidget(
                    text: 'Order summary',
                    color: Colors.black,
                    fontsize: 15.sp,
                    weight: FontWeight.w600),
                    SizedBox(height: 15.h),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          rowWidget('Item', '₹ 900', Colors.grey, FontWeight.w500),
                          SizedBox(height: 10.h),
                          rowWidget('Tax', '₹ 200', Colors.grey, FontWeight.w500),
                          SizedBox(height: 10.h),
                          rowWidget('Shipping', '₹ 50', Colors.grey, FontWeight.w500),
                          SizedBox(height: 10.h),
                          rowWidget('Total', '₹ 1150', Colors.grey, FontWeight.w500),
                          SizedBox(height: 15.h),
                          Container(
                            height: 1.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey[300]
                            ),

                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TitleWidget(text: 'Order total', color: Colors.black, fontsize: 13.sp, weight: FontWeight.w600),
                              TitleWidget(text: '₹ 1,150', color: Colors.black, fontsize: 13.sp, weight: FontWeight.w600),
                            ],
                          ),
                        ],
                      ),
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }

  //--------------------- Custom widget -----------------//

  Widget rowWidget(String title1, String title2, Color color, FontWeight weigh){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleWidget(text: title1, color: color, fontsize: 12.sp, weight: weigh),
        TitleWidget(text: title2, color: color, fontsize: 12.sp, weight: weigh)
        
      ],
    );
  }
}

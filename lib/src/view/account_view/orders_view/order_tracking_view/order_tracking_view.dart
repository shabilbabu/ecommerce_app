import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({Key? key}) : super(key: key);

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
              height: 45.h,
              width: 45.h,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.black, size: 20.sp),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        roundContainer(),
                        slimContainer(270.h),
                        roundContainer(),
                        slimContainer(175),
                        roundContainer(),
                        slimContainer(110.h),
                        roundContainer()
                      ],
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              TitleWidget(text: 'Order confirmed', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w500),
                              SizedBox(width: 10.w),
                              TitleWidget(text: 'Wed, 23rd Sep ‘22', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400)
                            ],
                          ),
                          SizedBox(height: 15.h),
                          TitleWidget(text: 'Your order has been placed.', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w400),
                          SizedBox(height: 10.h),
                          TitleWidget(text: 'Wed, 23rd Sep ‘22 - 5:01pm ', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),
                          SizedBox(height: 15.h),
                          TitleWidget(text: 'Seller has processed your order’', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w400),
                          SizedBox(height: 10.h),
                          TitleWidget(text: 'Wed, 23rd Sep ‘22 - 5:36pm ', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),
                          SizedBox(height: 15.h),
                          TitleWidget(text: 'Your item has been picked up by courier partneer.', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w400),
                          SizedBox(height: 10.h),
                          TitleWidget(text: 'Wed, 23rd Sep ‘22 - 5:36pm ', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),

                          SizedBox(height: 45.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TitleWidget(text: 'Shipped', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w500),
                              SizedBox(width: 10.w),
                              TitleWidget(text: 'Wed, 23rd Sep ‘22', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),
                              
                            ],
                          ),
                          SizedBox(height: 15.h),
                          TitleWidget(text: "Ekart Logistics - FMPC0879152355", color: Colors.black, fontsize: 16.sp, weight: FontWeight.w400),
                          SizedBox(height: 10.h),
                          TitleWidget(text: 'Wed, 23rd Sep ‘22 - 5:41pm ', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),
                          SizedBox(height: 15.h),
                          TitleWidget(text: 'Your item has been received in the hub nearest to you', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w400),

                          SizedBox(height: 40.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TitleWidget(text: 'Out for Delivery', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w500),
                              SizedBox(width: 10.w),
                              TitleWidget(text: 'Fri, 25th Sep ‘22', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          TitleWidget(text: "Your item is out for delivery", color: Colors.black, fontsize: 16.sp, weight: FontWeight.w400),
                          SizedBox(height: 10.h),
                          TitleWidget(text: 'Fri, 25th Sep ‘22 - 9:54pm ', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),

                          SizedBox(height: 40.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TitleWidget(text: 'Delivered', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w500),
                              SizedBox(width: 10.w),
                              TitleWidget(text: 'Fri, 25th Sep ‘22', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          TitleWidget(text: "Your item has been delivered", color: Colors.black, fontsize: 16.sp, weight: FontWeight.w400),
                          SizedBox(height: 10.h),
                          TitleWidget(text: 'Fri, 25th Sep ‘22 - 5:50pm ', color: Colors.grey, fontsize: 14.sp, weight: FontWeight.w400),
                        
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//----------------- Round container ---------------//
  Widget roundContainer() {
    return Container(
      height: 15.h,
      width: 15.h,
      decoration: BoxDecoration(
        color: Colors.green[600],
        shape: BoxShape.circle,
      ),
    );
  }

  //----------- slim container ----------------//
  Widget slimContainer(double hight) {
    return Container(
      height: hight,
      width: 1.w,
      color: Colors.green[600],
    );
  }
}

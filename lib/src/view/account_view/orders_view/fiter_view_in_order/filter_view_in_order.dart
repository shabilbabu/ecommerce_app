import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterViewInOrder extends StatefulWidget {
  const FilterViewInOrder({Key? key}) : super(key: key);

  @override
  State<FilterViewInOrder> createState() => _FilterViewInOrderState();
}

String? orderType;

class _FilterViewInOrderState extends State<FilterViewInOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20.sp,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                width: 10.w,
              ),
              TitleWidget(
                  text: 'Back',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  top: 0,
                  right: 0,
                  left: 0,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleWidget(
                            text: 'Orders Type',
                            color: Colors.black,
                            fontsize: 16.sp,
                            weight: FontWeight.w600),
                        SizedBox(height: 25.h),
                        rowWidge('Delivered'),
                        rowWidge('On the way'),
                        rowWidge('Cancelled'),
                        rowWidge('Returned'),
                        SizedBox(height: 20.h),
                        TitleWidget(
                            text: 'Time filter',
                            color: Colors.black,
                            fontsize: 16.sp,
                            weight: FontWeight.w600),
                        SizedBox(height: 20.h),
                        rowWidge('Last 30 days'),
                        rowWidge('Last 6 months'),
                        rowWidge('2022'),
                        rowWidge('2021'),
                        rowWidge('2020'),
                        rowWidge('2019'),
                        rowWidge('2018'),
                        SizedBox(height: 80.h),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                    bottom: 10,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: ContainerButton(
                        text: 'Apply',
                        height: 60.h,
                        weight: FontWeight.w600,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  //------------- this is custom row widget -----------------------//

  Widget rowWidge(String title) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 25.h,
              width: 25.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(color: Colors.black, width: 2)),
            ),
            SizedBox(
              width: 20.w,
            ),
            TitleWidget(
                text: title,
                color: Colors.black,
                fontsize: 13.sp,
                weight: FontWeight.w500),
          ],
        ),
        SizedBox(height: 15.h),
        Container(
          height: 1.h,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[200],
        ),
        SizedBox(height: 18.h),
      ],
    );
  }
}

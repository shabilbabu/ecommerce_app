import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class GetHelpView extends StatelessWidget {
  const GetHelpView({Key? key}) : super(key: key);

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45.h,
                  width: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Colors.white
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded,size: 20.sp,color: Colors.black),
                ),
                TitleWidget(text: 'Get help', color: Colors.black, fontsize: 18.sp, weight: FontWeight.w600),
                SizedBox(width: 45.w),
              ],
            ),
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w),
          child: Stack(
            
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h,),
                      Center(child: Image.asset('assets/get help image.png',height: 241.h,width: 241.w,)),
                      SizedBox(height: 30.h),
                      TitleWidget(text: 'We are here to help so please get in touch with us.', color: Colors.black, fontsize: 16.sp, weight: FontWeight.w600,textalign: TextAlign.center,),
                      SizedBox(height: 25.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 30.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.r)
                        ),
                        child: Column(
                          children: [
                            customWidget('Phone Number', '+91 1234567890', Icons.phone,),
                            SizedBox(height: 20.h),
                            Container(
                              height: 1.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey[200]
                              ),
                            ),
                            SizedBox(height: 20.h),
                            customWidget('E-mail address', 'someone@gmail.com', Icons.email_outlined)
                          ],
                        ),
                      ),
                      SizedBox(height: 100.h),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  //------------------ Custom widget -------------------//

  Widget customWidget(String title, String subtitle,IconData icon){
    return Row(
      children: [
        Container(
          height: 50.h,
          width: 50.h,
          decoration: BoxDecoration(
            color: HexColor(primaryColor),
            borderRadius: BorderRadius.circular(200.r),
          ),
          child:  Icon(icon,size: 30.sp,color: Colors.white),
        ),
        SizedBox(width: 15.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(text: title, color: Colors.black, fontsize: 14.sp, weight: FontWeight.w600),
            SizedBox(height: 3.h),
            TitleWidget(text: subtitle, color: Colors.grey, fontsize: 12.sp, weight: FontWeight.w300),
          ],
        )
      ],
    );
  }
}
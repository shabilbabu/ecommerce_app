import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/account_view/change_password_view/change_password_view.dart';
import 'package:dikazo/src/view/account_view/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../selected_product_view/selected_product_view.dart';
import '../../widgets/title_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SelectedProductView()));
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
              const Spacer(),
              TitleWidget(
                  text: 'Profile',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const EditProfile()));
                  },
                  child: TitleWidget(
                      text: 'Edit',
                      color: HexColor(primaryColor),
                      fontsize: 13.sp,
                      weight: FontWeight.w600)),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/reviewimage.png',
                    height: 70.h,
                    width: 70,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleWidget(
                          text: 'Sepide',
                          color: Colors.black,
                          fontsize: 17.sp,
                          weight: FontWeight.w600),
                      SizedBox(
                        height: 5.h,
                      ),
                      TitleWidget(
                          text: 'sepide34@gmail.com',
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontsize: 13.sp,
                          weight: FontWeight.w400)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              rowWidget('Name', 'Sepide', Colors.black),
              rowWidget('Date of birth', '05/09/98', Colors.black),
              rowWidget('Phone number', '+91 1234567890', Colors.black),
              rowWidget('Gender', 'Male', Colors.black),
              rowWidget('Email', 'sepide32@gmail.com', Colors.black),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChangePasswordView()));
                },
                child: rowWidget('Password', 'Change Password', HexColor(primaryColor))),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowWidget(String title1, String title2, Color color) {
    return Column(
      children: [
        Row(
          children: [
            TitleWidget(
                text: title1,
                color: Colors.black,
                fontsize: 15.sp,
                weight: FontWeight.w400),
            const Spacer(),
            TitleWidget(
                text: title2,
                color: color,
                fontsize: 15.sp,
                weight: FontWeight.w600),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 1.h,
          color: Colors.grey[200],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

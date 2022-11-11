import 'package:dikazo/src/view/account_view/set_new_password_view/set_new_password_view.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: Colors.white
              ),
              child: Icon(Icons.arrow_back_ios_new_rounded,size: 20.sp,color: Colors.black),
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
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 80.w),
                        child: Image.asset('assets/current password .png',height: 227.h,width: 211.w,),
                      ),
                      SizedBox(height: 30.h),
                      TitleWidget(text: 'Current Password', color: Colors.black, fontsize: 18.sp, weight: FontWeight.w600),
                      SizedBox(height: 3.h),
                      TitleWidget(text: 'Enter your current password to reset your password', color: Colors.black, fontsize: 11.sp, weight: FontWeight.w500),
                      SizedBox(height: 25.h),
                      CustomTextFormField(fillcolor: Colors.grey[300],prefixicon: const Icon(Icons.lock_outlined),hintText: 'Password'),
                      SizedBox(height: 100.h),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SetNewPasswordView()));
                  },
                  child: ContainerButton(text: 'Next',height: 60.h)))
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:dikazo/src/view/authentication_view/forgot_password/changing_successfull.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetNewPasswordView extends StatelessWidget {
  const SetNewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            height: 45.h,
            width: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: Colors.white
            ),
            child: Icon(Icons.arrow_back_ios_new_rounded,size: 20.sp,color: Colors.black),
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
                        child: Image.asset('assets/set password new.png',height: 212.h,width: 177.w,),
                      ),
                      SizedBox(height: 30.h),
                      TitleWidget(text: 'Set new password', color: Colors.black, fontsize: 18.sp, weight: FontWeight.w600),
                      SizedBox(height: 3.h),
                      TitleWidget(text: 'Your new password must be different from previosly used password.', color: Colors.black, fontsize: 11.sp, weight: FontWeight.w500),
                      SizedBox(height: 25.h),
                      CustomTextFormField(fillcolor: Colors.grey[300],prefixicon: const Icon(Icons.lock_outlined),hintText: 'New Password'),
                      SizedBox(height: 20.h),
                      CustomTextFormField(fillcolor: Colors.grey[300],prefixicon: const Icon(Icons.lock_outlined),hintText: 'Confirm Password'),
                      SizedBox(height: 100.h),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChangingSuccessfull()));
                  },
                  child: ContainerButton(text: 'Change password',height: 60.h),),)
            ],
          ),
        ),
      ),
    );
  }
}
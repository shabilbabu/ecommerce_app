import 'package:dikazo/src/view/authentication_view/forgot_password/varification_code.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/page_transitions/fade_animation.dart';
import '../../widgets/title_widget.dart';

class ChooseVarificationMethod extends StatelessWidget {
  const ChooseVarificationMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Material(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              top: 0,
              right: 0,
              left: 0,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                      )),
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                            child: Image.asset('assets/ec-easy-shopping.png',
                                width: 233.w, height: 288.h)),
                        SizedBox(
                          height: 50.h,
                        ),
                        TitleWidget(
                            text: 'Password recovery',
                            color: Colors.black,
                            fontsize: 22.sp,
                            weight: FontWeight.w600),
                            SizedBox(height: 15.h),
                        TitleWidget(
                            text: 'Choose verification method',
                            color: Colors.black,
                            fontsize: 16.sp,
                            weight: FontWeight.w500),
                        SizedBox(
                          height: 10.h,
                        ),
                        const TitleWidget(
                            text:
                                "We’ll send you a verification code to reset your password",
                            color: Colors.black,
                            fontsize: 12,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 40.h,
                        ),
                        
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 60.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.w),
                                const Icon(Icons.phone_rounded,color: Colors.grey,),
                                SizedBox(width: 8.w),
                                TitleWidget(text: '+91', color: Colors.black, fontsize: 14.sp, weight: FontWeight.w500),
                                SizedBox(width: 5.w),
                                Container(
                                  height: 25.h,
                                  width: 1.w,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5.w),
                                TitleWidget(text: '1234567890', color: Colors.black, fontsize: 14.sp, weight: FontWeight.w500),
                                const Spacer(),
                                Icon(Icons.arrow_forward_ios_rounded,size: 18.sp,color: Colors.grey),
                                SizedBox(width: 10.w),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                         GestureDetector(
                          onTap: () {
                            
                          },
                           child: Container(
                            height: 60.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.w),
                                const Icon(Icons.mail_outlined,color: Colors.grey,),
                                
                                SizedBox(width: 8.w),
                                TitleWidget(text: 'someone@gmail.com', color: Colors.black, fontsize: 14.sp, weight: FontWeight.w500),
                                const Spacer(),
                                Icon(Icons.arrow_forward_ios_rounded,size: 18.sp,color: Colors.grey),
                                SizedBox(width: 10.w),
                              ],
                            ),
                                                 ),
                         ),
                      ],
                    ),
                  ),
                        
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: GestureDetector(
                    onTap: () => Navigator.push(context, FadeRoute2(const VarificationCodeView())),
                    child: ContainerButton(text: 'Next', height: 60,width: MediaQuery.of(context).size.width,fontSize: 16.sp,weight: FontWeight.w600),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  //------------ navigation function -----------//
  void navigateTo(context, screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

import 'package:dikazo/src/controller/authentication_controller/register_controller/register_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/authentication_view/login_view/login_view.dart';
import 'package:dikazo/src/view/authentication_view/register_view/signup_view.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../widgets/page_transitions/fade_animation.dart';

class ContinueView extends StatelessWidget {
  const ContinueView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<RegisterController>();
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backgroundImage), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 102.h,
                ),
                Center(
                    child: Image.asset(
                  dikazoLogo,
                  height: 139.h,
                  width: 255,
                )),
                SizedBox(
                  height: 56.h,
                ),
                TitleWidget(
                    text: "Let's get started!",
                    color: Colors.black,
                    fontsize: 21.sp,
                    weight: FontWeight.w600),
                SizedBox(
                  height: 7.h,
                ),
                const TitleWidget(
                    text:
                        "Please enter your valid data in order to create an account",
                    color: Colors.black,
                    fontsize: 12,
                    weight: FontWeight.w600),
                SizedBox(
                  height: 30.h,
                ),
                const CustomTextFormField(
                  prefixicon: Icon(Icons.mail_outlined),
                  hintText: 'Email ID/Mobile Number',
                  fillcolor: Colors.white,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                          height: 60.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.h),
                              const Icon(
                                Icons.phone_sharp,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8.w),
                              TitleWidget(
                                  text: '+91',
                                  color: Colors.grey,
                                  fontsize: 14.sp,
                                  weight: FontWeight.w400),
                              SizedBox(width: 3.w),
                              Container(
                                height: 25.h,
                                width: 1,
                                color: Colors.grey,
                              ),
                             const  Expanded(
                                child: CustomTextFormField(
                                  fillcolor: Colors.transparent,
                                  keyboardType: TextInputType.number,
                                  hintText: 'Phone number',
                                ),
                              ),
                              SizedBox(width: 10.w),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                const CustomTextFormField(
                  prefixicon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                  fillcolor: Colors.white,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.agree();
                      },
                      icon: Consumer<RegisterController>(
                        builder: (context,controller,child) {
                          return Icon(
                            controller.isAgree == false
                            ? Icons.check_box_outline_blank_rounded
                            : Icons.check_box_outlined,
                            size: 30.sp,
                          );
                        }
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Center(
                        child: TitleWidget(
                            text:
                                'I agree with the Terms of service & Privacy\npolicy.',
                            color: Colors.black,
                            fontsize: 12,
                            weight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, FadeRoute2(const SignUpView())),
                    child: ContainerButton(
                        text: 'Continue',
                        height: 60.h,
                        fontSize: 18.sp,
                        weight: FontWeight.w600)),
                SizedBox(
                  height: 25.h,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account  ",
                      style: GoogleFonts.inter(
                          fontSize: 15.sp, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.pushReplacement(context, FadeRoute2(const LoginView()))
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//------------ navigation function -----------//
  void navigateTo(context, screen) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

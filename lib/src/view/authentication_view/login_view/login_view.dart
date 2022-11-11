import 'package:dikazo/src/controller/bottom_controller/bottom_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/authentication_view/forgot_password/choose_verification_method.dart';
import 'package:dikazo/src/view/authentication_view/register_view/continue_view.dart';
import 'package:dikazo/src/view/bottom_view/bottom_view.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../widgets/page_transitions/fade_animation.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomController = context.read<BottomController>();
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
                    width: 255.h,
                  ),
                ),
                SizedBox(
                  height: 56.h,
                ),
                TitleWidget(
                    text: 'Welcome back!',
                    color: Colors.black,
                    fontsize: 21.sp,
                    weight: FontWeight.w600),
                SizedBox(
                  height: 7.h,
                ),
                const TitleWidget(
                    text:
                        "Login in with your data that your  intered during your registration",
                    color: Colors.black,
                    textalign: TextAlign.start,
                    textdirection: TextDirection.ltr,
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
                const CustomTextFormField(
                  prefixicon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                  fillcolor: Colors.white,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () => Navigator.push(context, FadeRoute2(const ChooseVarificationMethod())),
                        child: const TitleWidget(
                            text: 'Forgot password',
                            color: Colors.black,
                            fontsize: 12,
                            weight: FontWeight.w600))),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                    onTap: () {
                      bottomController.selectecdIndexUpdate(0);
                      Navigator.pushReplacement(context, FadeRoute2(const BottomView()));

                      // Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) {
                      //           return const BottomView();
                      //         }),
                      //     (Route<dynamic> route) => false);
                    },
                    child: ContainerButton(
                        text: 'Login',
                        height: 60.h,
                        fontSize: 20,
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
                          text: 'Sign up',
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                Navigator.pushReplacement(context, FadeRoute2(const ContinueView()))
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Center(
                    child: TitleWidget(
                        text: 'or',
                        color: Colors.black,
                        fontsize: 18,
                        weight: FontWeight.w400)),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    image('assets/_Google.png',),
                    image('assets/_Facebook.png')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//------------- image widget for google and facebook ----------------//
  Widget image(img) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
    );
  }

//------------ navigation function -----------//
  void navigateTo(context, screen) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

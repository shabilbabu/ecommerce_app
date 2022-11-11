import 'package:dikazo/src/view/authentication_view/forgot_password/change_password.dart';
import 'package:dikazo/src/view/authentication_view/register_view/signup_view.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../widgets/container_button.dart';
import '../../widgets/containerbutton_with_border.dart';
import '../../widgets/page_transitions/fade_animation.dart';

class VarificationCodeView extends StatelessWidget {
  const VarificationCodeView({Key? key}) : super(key: key);

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
              right: 0,
              left: 0,
              top: 0,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  automaticallyImplyLeading: false,
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
                          height: 45.h,
                        ),
                        Center(
                            child: Image(
                          image: const AssetImage(
                            'assets/Illustration 1.png',
                          ),
                          height: 229.h,
                        )),
                        SizedBox(
                          height: 50.h,
                        ),
                        TitleWidget(
                            text: 'Varification code',
                            color: Colors.black,
                            fontsize: 21.sp,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 10.h,
                        ),
                        const TitleWidget(
                            text: "We have sent the code verification to",
                            color: Colors.black,
                            fontsize: 13,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 5.h,
                        ),
                        const TitleWidget(
                            text: "+9198******* Change phone number ?",
                            color: Colors.black,
                            fontsize: 14,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 30.h,
                        ),
                        PinCodeTextField(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          autoDisposeControllers: false,
                          appContext: context,
                          length: 4,
                          obscureText: false,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            selectedFillColor: HexColor(
                              '#0C1559',
                            ),
                            inactiveFillColor: Colors.white,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 60.h,
                            activeColor: Colors.transparent,
                            fieldWidth: 60.w,
                            selectedColor: Colors.transparent,
                            activeFillColor: HexColor('#E6E6E6'),
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          keyboardType: TextInputType.number,
                          enableActiveFill: true,
                          onCompleted: (value) {},
                          onChanged: (value) {},
                        ),

                        SizedBox(height: 20.h),

                        const Center(
                            child: TitleWidget(
                                text: 'Resend code after 1:36',
                                color: Colors.black,
                                fontsize: 13,
                                weight: FontWeight.w600)),
                        SizedBox(
                          height: 120.h,
                        ),
                      ],
                    ),
                  ),
                       
                  
                ),
              ),
            ),
             Positioned(
              left: 0,
              right: 0,
                    bottom: 10,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        
                        children: [
                          ContainerButtonWithBorder(
                              heigt: 60.h,
                             width: MediaQuery.of(context).size.width * 0.35,
                              fontsize: 17,
                              weight: FontWeight.w600,
                              text: 'Resend'),

                          const Spacer(),
                          
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, FadeRoute2(const ChangePassword()));
                            },
                            child: ContainerButton(
                                text: 'Confirm',
                                height: 60.h,
                                width: MediaQuery.of(context).size.width * 0.35,
                                weight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ],
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
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

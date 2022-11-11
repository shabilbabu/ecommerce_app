import 'package:dikazo/src/view/authentication_view/forgot_password/changing_successfull.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/page_transitions/fade_animation.dart';
import '../../widgets/title_widget.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

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
              left: 0,
              right: 0,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                            child: Image.asset('assets/set password.png',
                                width: 177.w, height: 211.h)),
                        SizedBox(
                          height: 50.h,
                        ),
                        TitleWidget(
                            text: 'Set new password',
                            color: Colors.black,
                            fontsize: 21.sp,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 10.h,
                        ),
                        const TitleWidget(
                            text:
                                "Your new password must be different from previosly used passwords.",
                            color: Colors.black,
                            fontsize: 12,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 30.h,
                        ),
                        const CustomTextFormField(
                          prefixicon: Icon(Icons.lock_outline),
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomTextFormField(
                            color: HexColor('#E6E6E6'),
                            prefixicon: const Icon(
                              Icons.lock_outline,
                            ),
                            hintText: 'New password again'),
                        SizedBox(
                          height: 110.h,
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
                    onTap: () => Navigator.push(context, FadeRoute2(const ChangingSuccessfull())),
                    child: ContainerButton(
                      text: 'Change Password',
                      height: 60.h,
                      width: MediaQuery.of(context).size.width,
                      fontSize: 18,
                      weight: FontWeight.w600,
                    ),
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

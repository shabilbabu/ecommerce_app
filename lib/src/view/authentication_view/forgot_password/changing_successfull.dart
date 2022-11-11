import 'package:dikazo/src/view/authentication_view/login_view/login_view.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/page_transitions/fade_animation.dart';

class ChangingSuccessfull extends StatelessWidget {
  const ChangingSuccessfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(
              height: 110.h,
            ),
            Center(
                child: Image.asset('assets/successfull.png',
                    width: 327.w, height: 327.h)),
            SizedBox(
              height: 80.h,
            ),
            Text(
              'Your password has been changed successfully!',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: GestureDetector(
                onTap: () => Navigator.pushReplacement(context, FadeRoute2(const LoginView())),
                child: ContainerButton(
                    text: 'Login',
                    height: 60,
                    fontSize: 16.sp,
                    width: MediaQuery.of(context).size.width,
                    weight: FontWeight.w600),
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

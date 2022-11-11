import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        containerImage('assets/1.png'),
        containerImage('assets/2.png'),
        containerImage('assets/3.png'),
      ],
    );
  }

  Widget containerImage(String img) {
    return Container(
      height: 135.h,
      width: 115.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(img),
        ),
      ),
    );
  }
}

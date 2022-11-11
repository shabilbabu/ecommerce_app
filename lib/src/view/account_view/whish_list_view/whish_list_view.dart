import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/card_custom_widgets/card_vertical_with_remove.dart';


class WhishList extends StatelessWidget {
  const WhishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
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
              SizedBox(width: 10.w),
              TitleWidget(
                  text: 'Wishlist',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600),
             
            ],
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 300,
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return CardVerticalWithRemove(
                            images: 'assets/whishlist image.png');
                      },
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
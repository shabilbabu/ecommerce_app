import 'package:dikazo/src/controller/select_product_controller/select_product_controller.dart';
import 'package:dikazo/src/view/category_view/category_view.dart';
import 'package:dikazo/src/view/widgets/page_transitions/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<SelectProductController>();
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context, FadeRoute2(const CategoryView()));
          },
          child: Container(
            height: 45.h,
            width: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: Colors.white,
            ),
            child: Center(
                child: Icon(Icons.arrow_back_ios_new_rounded,
                    size: 20.sp, color: Colors.black)),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            controller.changeSelectedIndex();
          },
          child: Consumer<SelectProductController>(
              builder: (context, controller, child) {
            return Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: Colors.white,
              ),
              child: Center(
                  child: controller.isFav == false
                      ? const Icon(Icons.favorite_border, color: Colors.black)
                      : const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        )),
            );
          }),
        ),
        SizedBox(
          width: 20.w,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 35.h,
            width: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: Colors.white,
            ),
            child: Center(
                child: Icon(Icons.share, size: 18.sp, color: Colors.black)),
          ),
        ),
      ],
    );
  }
}

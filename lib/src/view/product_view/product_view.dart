import 'package:dikazo/src/controller/product_controller/product_controller.dart';
import 'package:dikazo/src/view/product_view/filter_page_view/filter_page_view.dart';
import 'package:dikazo/src/view/selected_product_view/selected_product_view.dart';
import 'package:dikazo/src/view/widgets/page_transitions/fade_animation.dart';
import 'package:dikazo/src/view/widgets/card_custom_widgets/vertical_custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_text_form_field.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<ProductController>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    height: 60.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 8.w,
                        ),
                        Image.asset(
                          'assets/Search.png',
                          height: 25.h,
                          width: 25.w,
                        ),
                        const Expanded(
                          child: CustomTextFormField(
                              fillcolor: Colors.white, hintText: 'Search...'),
                        ),
                        Container(
                          height: 30.h,
                          width: 2.w,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                  context, FadeRoute2(const FilterPageView()));
                          },
                          child: Image.asset(
                            'assets/filter_icon.png',
                            height: 30.h,
                            width: 30.w,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                  context, FadeRoute2(const SelectedProductView()));
                  },
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 300,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: controller.imageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomCardVertical(
                          images: controller.imageList[index]);
                    },
                  ),
                ),
              ),
              // SizedBox(height: 500.h,)
            ],
          ),
        ),
      ),
    );
  }
}

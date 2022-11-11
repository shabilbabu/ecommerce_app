import 'package:dikazo/src/controller/category_controller/category_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/product_view/product_view.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/page_transitions/fade_animation.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CategoryController>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CustomTextFormField(
                  fillcolor: Colors.white,
                  prefixicon: Icon(Icons.search),
                  hintText: 'Search...'),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 10.w, top: 20.h),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Consumer<CategoryController>(
                                  builder: (context, controller, child) {
                                return ListView.builder(
                                  primary: false,
                                  shrinkWrap: true,
                                  itemCount: 9,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                        onTap: () {
                                          controller.changeSelectedIndex(index);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(vertical: 10.h),
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 10.0,
                                                  spreadRadius: 2.0,
                                                  offset: Offset(
                                                    -10.10, // Move to right 7.0 horizontally
                                                    10.10,
                                                    // Move to bottom 8.0 Vertically
                                                  ))
                                            ],
                                            color: controller.selecteedIndex ==
                                                    index
                                                ? HexColor(primaryColor)
                                                : Colors.white,
                                          ),
                                          child: Column(
                                            children: [
                                              Image.asset(controller.categoryImageList[index],height: 50.h,width: 50.w,),
                                              SizedBox(height: 5.h),
                                              Text(
                                                controller.categoryList[index],
                                                style: GoogleFonts.inter(
                                                    color: controller
                                                                .selecteedIndex ==
                                                            index
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 11.sp),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ));
                                  },
                                );
                              }),
                              SizedBox(
                                height: 100.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset('assets/category image.png',
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              TitleWidget(
                                  text: 'Shop by category',
                                  color: Colors.black,
                                  fontsize: 15.sp,
                                  weight: FontWeight.w600),
                              SizedBox(
                                height: 15.h,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        FadeRoute2(const ProductView()));
                                  },
                                  child: GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 150,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 5,
                                    ),
                                    itemCount: 15,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                          Image.asset(
                                            controller.imageList1[index],
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          TitleWidget(
                                              text: controller.titleList[index],
                                              color: Colors.black,
                                              fontsize: 13.sp,
                                              weight: FontWeight.w500)
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

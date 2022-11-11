import 'package:dikazo/src/controller/category_controller/category_controller.dart';
import 'package:dikazo/src/controller/fiter_page_controller/filter_page_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/bottom_view/bottom_view.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class FilterPageView extends StatelessWidget {
  const FilterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<FilterPageController>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 40.h,
                  width: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(200.r)
                  ),
                  child:  const Icon(Icons.arrow_back_ios_new_rounded,size: 20,color: Colors.black,),
                ),
              ),
              SizedBox(width: 10.w,),
              TitleWidget(text: 'Filters', color: Colors.black, fontsize: 18.sp, weight: FontWeight.w600),
              const Spacer(),
              TitleWidget(text: 'Clear filters', color: Colors.black, fontsize: 12.sp, weight: FontWeight.w500),
            ],
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 10.h),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Consumer<CategoryController>(
                                      builder: (context, controller, child) {
                                    return ListView.builder(
                                      primary: false,
                                      shrinkWrap: true,
                                      itemCount: controller.titleList.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return InkWell(
                                            onTap: () {
                                              controller.changeSelectedIndex(index);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                color: controller.selecteedIndex ==
                                                        index
                                                    ? HexColor(primaryColor)
                                                    : Colors.white,
                                              ),
                                              child: Center(
                                                child: TitleWidget(
                                                  
                                                  text: controller
                                                      .titleList[index],
                                                  textdirection: TextDirection.ltr,
                                                  color:
                                                      controller.selecteedIndex ==
                                                              index
                                                          ? Colors.white
                                                          : Colors.black,
                                                  fontsize: 13.sp,
                                                  weight: FontWeight.w400,
                                                  
                                                ),
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
                        SizedBox(width: 10.w,),
                        Flexible(
                          flex: 3,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        height: 25.h,
                                      ),
                                      itemCount: controller.sizelist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Row(
                                          children: [
                                            Container(
                                              height: 20.h,
                                              width: 20.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.r),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 2),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.w,
                                            ),
                                            TitleWidget(
                                                text: controller.sizelist[index],
                                                color: Colors.black,
                                                fontsize: 13.sp,
                                                weight: FontWeight.w500)
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  bottom: 10,
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 60.h,
                            width: 175.w,
                            decoration: BoxDecoration(
                                color: HexColor('#E2E1FE'),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TitleWidget(text: '423', color: HexColor(primaryColor), fontsize: 15.sp, weight: FontWeight.w500),
                                TitleWidget(
                                    text: 'Product found',
                                    color: HexColor(primaryColor),
                                    fontsize: 14.sp,
                                    weight: FontWeight.w500)
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BottomView()));
                        },
                        child: Container(
                            height: 60.h,
                            width: 175.w,
                            decoration: BoxDecoration(
                                color: HexColor(primaryColor),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TitleWidget(
                                    text: 'Apply',
                                    color: Colors.white,
                                    fontsize: 14.sp,
                                    weight: FontWeight.w500)
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

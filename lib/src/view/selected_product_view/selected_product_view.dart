import 'package:dikazo/src/controller/bottom_controller/bottom_controller.dart';
import 'package:dikazo/src/controller/select_product_controller/select_product_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/bottom_view/bottom_view.dart';
import 'package:dikazo/src/view/change_address/change_address.dart';
import 'package:dikazo/src/view/cart_view/check_out_view/check_out_view.dart';
import 'package:dikazo/src/view/selected_product_view/description_view/description_view.dart';
import 'package:dikazo/src/view/selected_product_view/review&rating/review_and_rating.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/custom_appbar_widget.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../widgets/home_view_custom_widget/popular_and_trending.dart';
import '../widgets/page_transitions/fade_animation.dart';

class SelectedProductView extends StatelessWidget {
  const SelectedProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomController = context.read<BottomController>();
    final controller = context.read<SelectProductController>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const CustomAppBar(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        TitleWidget(
                            text: 'Heading',
                            color: Colors.black,
                            fontsize: 14.sp,
                            weight: FontWeight.w300),
                        const Spacer(),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.yellow[600],
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        TitleWidget(
                            text: '4.4',
                            color: Colors.black,
                            fontsize: 12.sp,
                            weight: FontWeight.w700),
                        TitleWidget(
                            text: '(120 Review)',
                            color: Colors.grey,
                            fontsize: 12.sp,
                            weight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TitleWidget(
                      text:
                          "Lorem ipsum dolor sit amet,onsectetur adipiscing elit.",
                      color: Colors.black,
                      fontsize: 18.sp,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 340.h,
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10.w,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.imageList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(top: 15.h),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.r),
                                  child: Image.asset(
                                    controller.imageList[index],
                                    height: 340.h,
                                    width: 340,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 60.h,
                            width: 60.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200.r),
                                color: Colors.red[600]),
                            child: Center(
                                child: TitleWidget(
                                    text: '24% \n off',
                                    textdirection: TextDirection.ltr,
                                    color: Colors.white,
                                    fontsize: 15.sp,
                                    weight: FontWeight.w700)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        TitleWidget(
                            text: '₹ 1,200',
                            color: HexColor(primaryColor),
                            fontsize: 16.sp,
                            weight: FontWeight.w600),
                        SizedBox(
                          width: 3.w,
                        ),
                        const Text(
                          '₹ 1,200',
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Container(
                          height: 20.h,
                          width: 48.w,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              '24%Off',
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TitleWidget(
                      text:
                          "Lorem ipsum dolor sit amet,onsectetur adipiscing elit.",
                      color: Colors.black,
                      fontsize: 15.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TitleWidget(
                        text: 'Colors',
                        color: Colors.black,
                        fontsize: 16.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 40.h,
                      child: Consumer<SelectProductController>(
                          builder: (context, conroller, child) {
                        return ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10.w,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: controller.colorList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                controller.changeColordIndex(index);
                              },
                              child: Container(
                                height: 40.h,
                                width: 40.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.r),
                                    border: controller.colordIndex == index
                                        ? Border.all(
                                            color: Colors.blue, width: 3)
                                        : Border.all(color: Colors.transparent),
                                    color: controller.colorList[index]),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TitleWidget(
                        text: 'Size',
                        color: Colors.black,
                        fontsize: 16.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 40.h,
                      child: Consumer<SelectProductController>(
                          builder: (context, controller, child) {
                        return ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10.w,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                controller.changeSizedIndex(index);
                              },
                              child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(80.r),
                                      color: controller.sizedIndex == index
                                          ? HexColor(primaryColor)
                                          : Colors.grey),
                                  child: Center(
                                      child: TitleWidget(
                                          text: controller.sizeList[index],
                                          color: Colors.white,
                                          fontsize: 13.sp,
                                          weight: FontWeight.w600))),
                            );
                          },
                        );
                      }),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TitleWidget(
                        text: 'Quantity',
                        color: Colors.black,
                        fontsize: 16.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 45.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                controller.incrementCount();
                              },
                              icon: const Icon(Icons.add)),
                          Consumer<SelectProductController>(
                              builder: (context, controller, child) {
                            return TitleWidget(
                                text: controller.initialValue.toString(),
                                color: Colors.black,
                                fontsize: 15.sp,
                                weight: FontWeight.w400);
                          }),
                          IconButton(
                              onPressed: () {
                                controller.decrementCount();
                              },
                              icon: const Icon(Icons.remove))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TitleWidget(
                        text: 'Product Hightlights :',
                        color: Colors.black,
                        fontsize: 18.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.h,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20.r)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        TitleWidget(
                            text: 'Lorem ipsum dolor sit amet, consectetur ',
                            color: Colors.grey,
                            fontsize: 15.sp,
                            weight: FontWeight.w400)
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.h,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20.r)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                            child: TitleWidget(
                                text:
                                    'elit in. Condimentum facilisis dis nunc tristiq,',
                                color: Colors.grey,
                                fontsize: 15.sp,
                                weight: FontWeight.w400))
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.h,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20.r)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                            child: TitleWidget(
                                text:
                                    'adipiscing elit. Risus, aliquet et egestas eget elit in. Condimentum facilisis dis nunc ',
                                color: Colors.grey,
                                fontsize: 15.sp,
                                weight: FontWeight.w400))
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.h,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20.r)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                            child: TitleWidget(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur ',
                                color: Colors.grey,
                                fontsize: 15.sp,
                                weight: FontWeight.w400))
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                  context, FadeRoute2(const DescriptionView()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitleWidget(
                              text: 'View More Description',
                              color: Colors.black,
                              fontsize: 18.sp,
                              weight: FontWeight.w600),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    TitleWidget(
                        text: 'Delivary Address',
                        color: Colors.black,
                        fontsize: 18.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 349.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 16.h),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TitleWidget(
                                    text: 'Delivered to',
                                    color: Colors.black,
                                    fontsize: 15.sp,
                                    weight: FontWeight.w600),
                                    SizedBox(width: 120.w),
                                Expanded(
                                  child: ContainerButton(
                                      text: 'Home',
                                      height: 30.h,
                                      fontSize: 13.sp,
                                      weight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 1.sp,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_outlined,
                                    size: 35.sp, color: Colors.grey),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TitleWidget(
                                          text: 'Praveen',
                                          color: Colors.grey,
                                          fontsize: 12.sp,
                                          weight: FontWeight.w600),
                                      TitleWidget(
                                        text:
                                            '''6-5-22, Plot no.east part Self Finance Colony, Vanasthalipuram +91 1234567890 Hyderabad, Telangana, 500070 India''',
                                        color: Colors.grey,
                                        fontsize: 12.sp,
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      FadeRoute2(const ChangeAddressView(
                                        containerTitle: 'Done',
                                      )));
                                },
                                child: ContainerButton(
                                    text: 'Change Address',
                                    fontSize: 14.sp,
                                    height: 50.h,
                                    weight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                  context, FadeRoute2(const ReviewAndRating()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitleWidget(
                              text: 'Reviews & Ratings',
                              color: Colors.black,
                              fontsize: 18.sp,
                              weight: FontWeight.w600),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 1.sp,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 226, 226),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    TitleWidget(
                                        text: '4.6',
                                        color: Colors.black,
                                        fontsize: 17.sp,
                                        weight: FontWeight.bold),
                                    TitleWidget(
                                        text: '/5',
                                        color: Colors.black,
                                        fontsize: 13.sp,
                                        weight: FontWeight.w500),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                TitleWidget(
                                    text: 'Based on 120 Revies',
                                    color: Colors.black,
                                    fontsize: 13.sp,
                                    weight: FontWeight.w600),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children:  [
                                    starIconWidget(Colors.yellow),
                                    starIconWidget(Colors.yellow),
                                    starIconWidget(Colors.yellow),
                                    starIconWidget(Colors.yellow),
                                    starIconWidget(Colors.grey),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TitleWidget(
                        text: 'Similar product',
                        color: Colors.black,
                        fontsize: 18.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 20.h,
                    ),
                    PopularAndTrending(),
                    SizedBox(
                      height: 100.h,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          bottomController.selectecdIndexUpdate(3);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const BottomView()),
                              (Route<dynamic> route) => false);
                        },
                        child: Container(
                            height: 60.h,
                            width: 175.w,
                            decoration: BoxDecoration(
                                color: HexColor(primaryColor),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                TitleWidget(
                                    text: 'Add to cart',
                                    color: Colors.white,
                                    fontsize: 14.sp,
                                    weight: FontWeight.w500)
                              ],
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CheckOutView()));
                      },
                      child: Container(
                          height: 60.h,
                          width: 175.w,
                          decoration: BoxDecoration(
                              color: HexColor('#E2E1FE'),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TitleWidget(
                                  text: 'Buy Now',
                                  color: HexColor(primaryColor),
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

  //-------------- Custom star icon widget ---------------//
  Widget starIconWidget(Color color){
    return Icon(Icons.star,size: 20.sp,color: color);
  }
}

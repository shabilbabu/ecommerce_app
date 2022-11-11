import 'package:dikazo/src/controller/home_controller/home_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/product_view/product_view.dart';
import 'package:dikazo/src/view/widgets/carousel_widgets/carousel_sliders_widget.dart';
import 'package:dikazo/src/view/widgets/carousel_widgets/custom_carasoul_slider.dart';
import 'package:dikazo/src/view/widgets/carousel_widgets/custom_carasoul_slider2.dart';
import 'package:dikazo/src/view/widgets/custom_image_container.dart';
import 'package:dikazo/src/view/widgets/home_contatiner_list.dart';
import 'package:dikazo/src/view/widgets/page_transitions/fade_animation.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../widgets/home_view_custom_widget/deal_of_the_day.dart';
import '../widgets/home_view_custom_widget/grab_or_gone.dart';
import '../widgets/home_view_custom_widget/limited_offer.dart';
import '../widgets/home_view_custom_widget/popular_and_trending.dart';
import '../widgets/home_view_custom_widget/recommendedf_for_you.dart';
import '../widgets/timer_container.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final controller = context.read<HomeController>();
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 433.h,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 43.h,
                          top: 0,
                          left: 0,
                          right: 0,
                          child: CustomCarouselSlider(
                            onPageChanged: (index, p1) {
                              controller.carouselChange(index);
                            },
                            initialPage: controller.carouselIndex,
                          ),
                        ),
                        SizedBox(
                          height: 337.h,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Consumer<HomeController>(
                                builder: (context, controller, child) {
                              return Row(
                                children: [
                                  const Spacer(),
                                  Row(
                                      children: List.generate(
                                    3,
                                    (index) => Container(
                                      margin: const EdgeInsets.all(5),
                                      height: controller.carouselIndex == index
                                          ? 20.h
                                          : 10.h,
                                      width: controller.carouselIndex == index
                                          ? 5.h
                                          : 10.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          controller.carouselIndex == index
                                              ? 5
                                              : 100.r,
                                        ),
                                        color: controller.carouselIndex == index
                                            ? Colors.white
                                            : HexColor(primaryColor),
                                      ),
                                    ),
                                  ).toList()),
                                  const Spacer(),
                                ],
                              );
                            }),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: HomeContainterList(),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomCarasoulSlider(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              image: const DecorationImage(
                                  image: AssetImage('assets/Frame 19052.png'),
                                  fit: BoxFit.cover)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Text('Super Flash Sale \n         50% Off',
                                  style: GoogleFonts.inter(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 1, 53, 95),
                                  )),
                              SizedBox(
                                height: 10.h,
                              ),
                              const EndsInTitle(
                                  color: Colors.white, fontSize: 18),
                              SizedBox(
                                height: 8.h,
                              ),
                              TimerContainer(
                                textColor: Colors.white,
                                containerColor: Colors.white,
                                opacity: 0.6,
                                semiColomn: Colors.white,
                                fontSize: 20.sp,
                                semiColomnFontSize: 20,
                                containerHight: 40.h,
                                containerWidth: 40.w,
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            TitleWidget(
                                text: 'Limited Time Offer',
                                color: Colors.black,
                                fontsize: 13.sp,
                                weight: FontWeight.bold),
                            const Spacer(),
                            Row(
                              children: [
                                EndsInTitle(
                                    color: Colors.pink, fontSize: 14.sp),
                                TimerContainer(
                                  textColor: Colors.white,
                                  containerColor: Colors.pink,
                                  opacity: 0.5,
                                  semiColomn: Colors.pink,
                                  fontSize: 13.sp,
                                  semiColomnFontSize: 16.sp,
                                  containerHight: 30.h,
                                  containerWidth: 30.w,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const LimitedOffer(),
                        SizedBox(
                          height: 20.h,
                        ),
                        DealOfTheDay(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomCarasoulSlider2(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TitleWidget(
                                text: 'Grab or gone',
                                color: Colors.black,
                                fontsize: 13.sp,
                                weight: FontWeight.bold),
                            const Spacer(),
                            EndsInTitle(color: Colors.pink, fontSize: 14.sp),
                            TimerContainer(
                              textColor: Colors.white,
                              containerColor: Colors.pink,
                              opacity: 0.5,
                              semiColomn: Colors.pink,
                              fontSize: 13.sp,
                              semiColomnFontSize: 16.sp,
                              containerHight: 30.h,
                              containerWidth: 30.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GrabOrGone(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomImageContainer(),
                        SizedBox(
                          height: 20.h,
                        ),
                        TitleWidget(
                            text: 'Popular & Trending',
                            color: Colors.black,
                            fontsize: 13.sp,
                            weight: FontWeight.bold),
                        SizedBox(
                          height: 20.h,
                        ),
                        PopularAndTrending(),
                        SizedBox(
                          height: 20.h,
                        ),
                        containerImage('assets/20.png'),
                        SizedBox(
                          height: 20.h,
                        ),
                        TitleWidget(
                            text: 'Recommended for you',
                            color: Colors.black,
                            fontsize: 13.sp,
                            weight: FontWeight.bold),
                        SizedBox(
                          height: 20.h,
                        ),
                        RecommendedForYou(),
                        SizedBox(
                          height: 20.h,
                        ),
                        containerImage('assets/21.png'),
                        SizedBox(
                          height: 100.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                  context, FadeRoute2(const ProductView()));
                  },
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/Search.png',
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //--------- custom widget -----------//
  Widget containerImage(String img) {
    return Container(
      height: 120.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(image: AssetImage(img))),
    );
  }
}

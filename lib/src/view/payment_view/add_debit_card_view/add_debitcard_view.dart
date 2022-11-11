import 'package:carousel_slider/carousel_slider.dart';
import 'package:dikazo/src/view/payment_view/order_detail_view/order_details_view.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../utils/constents.dart';
import '../../widgets/title_widget.dart';

class AddDebitCardView extends StatelessWidget {
  const AddDebitCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
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
                              borderRadius: BorderRadius.circular(200.r),
                            ),
                            child: Icon(Icons.arrow_back_ios_new_rounded,
                                size: 20.sp, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 15.h,
                        ),
                        TitleWidget(
                            text: 'Credit /Debit card',
                            color: Colors.black,
                            fontsize: 18.sp,
                            weight: FontWeight.w600),
                      ],
                    ),
                  ),
                  body: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CarouselSlider(
                                  items: [
                                    //1nd Image of Slider
                                    customCarouselContainer('assets/Card.png'),
                                    //2rd Image of Slider
                                    customCarouselContainer('assets/Card.png'),
                                    //3th Image of Slider
                                    customCarouselContainer('assets/Card.png')
                                  ],
                            
                                  //Slider Container properties
                                  options: CarouselOptions(
                                    height: 220.h,
                                    enlargeCenterPage: true,
                                    autoPlay: false,
                                    aspectRatio: 2 / 1,
                                    enableInfiniteScroll: false,
                                    autoPlayAnimationDuration: const Duration(milliseconds: 500),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                TitleWidget(
                                    text: 'Name On Card',
                                    color: Colors.grey,
                                    fontsize: 14.sp,
                                    weight: FontWeight.w500),
                                SizedBox(
                                  height: 5.h,
                                ),
                                CustomTextFormField(
                                  fillcolor: Colors.grey[300],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                TitleWidget(
                                    text: 'Card Number',
                                    color: Colors.grey,
                                    fontsize: 14.sp,
                                    weight: FontWeight.w500),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Container(
                                  height: 60.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(10.r)),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: CustomTextFormField(
                                        fillcolor: Colors.grey[300],
                                      )),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Image.asset('assets/cardsymbol.png',
                                          height: 40.h, width: 40.w),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TitleWidget(
                                            text: 'Expiry Date',
                                            color: Colors.grey,
                                            fontsize: 14.sp,
                                            weight: FontWeight.w500,
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          CustomTextFormField(
                                            fillcolor: Colors.grey[300],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TitleWidget(
                                            text: 'CVV',
                                            color: Colors.grey,
                                            fontsize: 14.sp,
                                            weight: FontWeight.w500,
                                          ),
                                          SizedBox(height: 5.h,),
                                          Container(
                                            height: 60.h,
                                            width: MediaQuery.of(context).size.width,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius: BorderRadius.circular(10.r),
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(child: CustomTextFormField(fillcolor: Colors.grey[300],)),
                                                SizedBox(width: 10.w,),
                                                Image.asset('assets/cvv icon.png',height: 40.h,width: 40.w,),
                                                SizedBox(width: 10.w,),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 150.h,),
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
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OrderDetailsView()));
                        },
                        child: Container(
                          height: 50.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: HexColor(primaryColor),
                            borderRadius: BorderRadius.circular(20.r),
                                    
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TitleWidget(text: 'Continue to Payment', color: Colors.white, fontsize: 13.sp, weight: FontWeight.w600),
                              SizedBox(width: 5.w,),
                              const Icon(Icons.arrow_forward_sharp,size: 22,color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }

//---------------- Custom carousel container widget ------------------//
  Widget customCarouselContainer(String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

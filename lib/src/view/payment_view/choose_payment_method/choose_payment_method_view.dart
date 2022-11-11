import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/cart_view/check_out_view/check_out_view.dart';
import 'package:dikazo/src/view/payment_view/add_debit_card_view/add_debitcard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/title_widget.dart';

class ChoosePaymentMethodView extends StatelessWidget {
const ChoosePaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CheckOutView()));
                },
                child: Container(
                  height: 40.h,
                  width: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(200.r),
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded,size: 20.sp,color: Colors.black),
                ),
              ),
              SizedBox(width: 15.h,),
              TitleWidget(text: 'Choose payment method', color: Colors.black, fontsize: 18.sp, weight: FontWeight.w600),
            ],
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleWidget(text: 'My cards', color: Colors.black, fontsize: 17.sp, weight: FontWeight.w500),
                        SizedBox(height: 15.h,),
                        Row(
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(200.r),
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleWidget(text: 'Card Name', color: Colors.black, fontsize: 15.sp, weight: FontWeight.w500),
                                TitleWidget(text: 'No. xxxxxxxxxxxxx', color: Colors.black, fontsize: 13.sp, weight: FontWeight.w300)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15.h,),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddDebitCardView()));
                          },
                          child: Row(
                            children: [
                              Container(
                                    height: 50.h,
                                    width: 50.h,
                                    decoration: BoxDecoration(
                                      color: HexColor(primaryColor),
                                      borderRadius: BorderRadius.circular(200.r),
                                    ),
                                    child: Icon(Icons.add,size: 25.sp,color: Colors.white),
                                  ),
                                  SizedBox(width: 15.w,),
                                  TitleWidget(text: 'Add a Debit/Credit/ATM Card', color: Colors.black, fontsize: 15.sp, weight: FontWeight.w600),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        TitleWidget(text: 'UPI', color: Colors.black, fontsize: 17.sp, weight: FontWeight.w500),
                        SizedBox(height: 15.h,),
                        Row(
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(200.r),
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            TitleWidget(text: 'UPI', color: Colors.black, fontsize: 17.sp, weight: FontWeight.w500),
                            const Spacer(),
                            TitleWidget(text: 'Select App', color: Colors.black, fontsize: 13.sp, weight: FontWeight.w500),
                            SizedBox(width: 3.w,),
                            Icon(Icons.arrow_forward_ios_rounded,size: 15.sp,color: Colors.black)
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        TitleWidget(text: 'Heading', color: Colors.black, fontsize: 17.sp, weight: FontWeight.w500),
                        SizedBox(height: 15.h,),
                        ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(height: 15.h,),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Container(
                              height: 50.h,
                              width: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(200.r),
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            TitleWidget(text: 'Heading', color: Colors.black, fontsize: 17.sp, weight: FontWeight.w500),
                            const Spacer(),
                            TitleWidget(text: 'Pay Now', color: Colors.black, fontsize: 13.sp, weight: FontWeight.w500),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddDebitCardView()));
                    },
                    child: Container(
                      height: 50.h,
                      width: 370,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:dikazo/src/controller/cart_controller/cart_controller.dart';
import 'package:dikazo/src/controller/select_product_controller/select_product_controller.dart';
import 'package:dikazo/src/view/edit_addressess_view/edit_addressess_view.dart';
import 'package:dikazo/src/view/payment_view/choose_payment_method/choose_payment_method_view.dart';
import 'package:dikazo/src/view/widgets/card_custom_widgets/card_without_minusandplus.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../../../utils/constents.dart';
import '../../widgets/title_widget.dart';


class CheckOutView extends StatelessWidget {
const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        
    final controller = context.read<CartController>();
    final selectedController = context.read<SelectProductController>();

    return SafeArea(
      child:  Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
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
              SizedBox(
                width: 10.w,
              ),
              TitleWidget(
                  text: 'Checkout',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleWidget(
                        text: 'Delivert Address',
                        color: Colors.black,
                        fontsize: 18.sp,
                        weight: FontWeight.w600),
                    SizedBox(height: 20.h),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 50.h,
                                  decoration: BoxDecoration(
                                    color: HexColor(primaryColor),
                                    borderRadius: BorderRadius.circular(200.r),
                                  ),
                                  child: Center(
                                      child: Image(
                                    image: const AssetImage(
                                        'assets/location icon.png'),
                                    height: 40.h,
                                    width: 30.w,
                                  )),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                TitleWidget(
                                    text: 'Home',
                                    color: Colors.black,
                                    fontsize: 15.sp,
                                    weight: FontWeight.w600),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TitleWidget(
                                text:
                                    'Sophi Nowakowska, Zabiniec 12/222, 31-215 Cracow, poland',
                                color: Colors.black,
                                fontsize: 13.sp,
                                weight: FontWeight.w500),
                            SizedBox(
                              height: 10.h,
                            ),
                            TitleWidget(
                                text: '+91 1234567890',
                                color: Colors.black,
                                fontsize: 13.sp,
                                weight: FontWeight.w600),
                            SizedBox(
                              height: 15.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const EditAddressessView()));
                              },
                              child: Container(
                                height: 60.h,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(
                                        color: HexColor(
                                          primaryColor,
                                        ),
                                        width: 2)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/pen icon.png',
                                      height: 25,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    TitleWidget(
                                        text: 'Edit address',
                                        color: HexColor(primaryColor),
                                        fontsize: 13.sp,
                                        weight: FontWeight.w600),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.grey[300]),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TitleWidget(
                        text: 'Order List',
                        color: Colors.black,
                        fontsize: 18.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 20.h,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10.h,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.imageList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return HorizontalCustomCardWithoutMinusAndPlus(
                            images: controller.imageList[index],
                            colorList: controller.colorList[index],
                            sizedlist: controller.sizeList[index],
                            countText:
                                selectedController.initialValue.toString());
                      },
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    TitleWidget(
                        text: 'Promo Code',
                        color: Colors.black,
                        fontsize: 18.sp,
                        weight: FontWeight.w600),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomTextFormField(
                        fillcolor: Color.fromARGB(255, 206, 206, 206),
                        hintText: 'Enter Promo Code'),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TitleWidget(
                                  text: 'Amount',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500),
                              TitleWidget(
                                  text: '₹ 9,999,999',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TitleWidget(
                                  text: 'Shipping',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500),
                              TitleWidget(
                                  text: '₹ 01',
                                  color: Colors.grey,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w500),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Container(
                            height: 1.h,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey[300],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TitleWidget(
                                  text: 'Total',
                                  color: Colors.black,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w700),
                              TitleWidget(
                                  text: '₹ 10,000,000',
                                  color: Colors.black,
                                  fontsize: 13.sp,
                                  weight: FontWeight.w700),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChoosePaymentMethodView()));
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
                        TitleWidget(
                            text: 'Continue to Payment',
                            color: Colors.white,
                            fontsize: 13.sp,
                            weight: FontWeight.w600),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Icon(Icons.arrow_forward_sharp,
                            size: 22, color: Colors.white),
                      ],
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
}

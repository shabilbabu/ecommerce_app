import 'package:dikazo/src/controller/cart_controller/cart_controller.dart';
import 'package:dikazo/src/controller/select_product_controller/select_product_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/cart_view/check_out_view/check_out_view.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/card_custom_widgets/horizontal_custom_card.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CartController>();
    final selectController = context.read<SelectProductController>();
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey[100],
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextFormField(
                        fillcolor: Colors.white,
                        prefixicon: Icon(
                          Icons.search_sharp,
                        ),
                        hintText: 'Search...',
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TitleWidget(
                          text: 'Cart',
                          color: Colors.black,
                          fontsize: 18.sp,
                          weight: FontWeight.w600),
                      SizedBox(
                        height: 20.h,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                        itemCount: controller.imageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return HorizontalCustomCard(images: controller.imageList[index], colorList: controller.colorList[index], sizedlist: controller.sizeList[index],countText: selectController.initialValue.toString(),);
                        },
                      ),
                      
                      SizedBox(
                        height: 100.h,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 90,
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CheckOutView()));
                          },
                          child: Container(
                              height: 60.h,
                              width: 175.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    bottomLeft: Radius.circular(20.r),
                                  )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TitleWidget(
                                      text: 'Total Price',
                                      color: const Color.fromARGB(
                                          255, 211, 210, 210),
                                      fontsize: 12.sp,
                                      weight: FontWeight.w500),
                                  TitleWidget(
                                      text: '₹ 9,999,999',
                                      color: Colors.black,
                                      fontsize: 15.sp,
                                      weight: FontWeight.w600)
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
                                color: HexColor(primaryColor),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    TitleWidget(
                                        text: 'Checkout',
                                        color: Colors.white,
                                        fontsize: 14.sp,
                                        weight: FontWeight.w500),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded,
                                        size: 18.sp, color: Colors.white)
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

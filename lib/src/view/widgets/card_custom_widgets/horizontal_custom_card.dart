import 'package:dikazo/src/controller/cart_controller/cart_controller.dart';
import 'package:dikazo/src/controller/select_product_controller/select_product_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/card_custom_widgets/custom_card_without_delete.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class HorizontalCustomCard extends StatelessWidget {
  const HorizontalCustomCard({
    Key? key,
    required this.images,
    required this.colorList,
    required this.sizedlist,
    required this.countText,
  }) : super(key: key);

  final String images;
  final Color colorList;
  final String sizedlist;
  final String countText;

  @override
  Widget build(BuildContext context) {
    final  cartController = context.read<CartController>();
    final selectController = context.read<SelectProductController>();
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              height: 120.h,
              width: 120.w,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                      image: AssetImage(images), fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 18.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '24%Off',
                        style: GoogleFonts.inter(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, con orem ipsum dolor sit',
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(
                                    topStart: Radius.circular(40.r),
                                    topEnd: Radius.circular(40.r)),
                              ),
                              context: context,
                              builder: ((context) {
                                return SizedBox(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          TitleWidget(
                                              text: 'Remove from cart?',
                                              color: Colors.black,
                                              fontsize: 18.sp,
                                              weight: FontWeight.w600),
                                          SizedBox(
                                            height: 50.h,
                                          ),
                                          const HorizontalCustomCardWithoutDelete(
                                              images: 'assets/203.png',
                                              colorList: Colors.red,
                                              sizedlist: 'S'),
                                          SizedBox(
                                            height: 50.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                  height: 60.h,
                                                  width: 140.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                    color: const Color.fromARGB(
                                                      255,
                                                      230,
                                                      230,
                                                      230,
                                                    ),
                                                  ),
                                                  child: Center(
                                                      child: TitleWidget(
                                                          text: 'Cancel',
                                                          color: Colors.black,
                                                          fontsize: 15.sp,
                                                          weight:
                                                              FontWeight.w600)),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: ContainerButton(
                                                    text: 'Yes, Remove',
                                                    height: 60.h),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                          child: Image.asset(
                            'assets/delete icon.png',
                            height: 30.h,
                            width: 30.w,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.h,
                        decoration: BoxDecoration(
                            color: colorList,
                            borderRadius: BorderRadius.circular(100.r)),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      TitleWidget(
                          text: 'Color',
                          color: Colors.black,
                          fontsize: 12.sp,
                          weight: FontWeight.w500),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 18.h,
                        width: 2.w,
                        color: const Color.fromARGB(255, 209, 209, 209),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      TitleWidget(
                          text: 'Size',
                          color: Colors.black,
                          fontsize: 12.sp,
                          weight: FontWeight.w500),
                      SizedBox(
                        width: 5.w,
                      ),
                      TitleWidget(
                          text: sizedlist,
                          color: Colors.black,
                          fontsize: 13.sp,
                          weight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      TitleWidget(
                          text: '₹ 9,999',
                          color: HexColor(primaryColor),
                          fontsize: 16.sp,
                          weight: FontWeight.w600),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '₹1,200',
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: HexColor('#F4F4F4'),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    selectController.incrementCount();
                                  },
                                  child: Image.asset(
                                    'assets/Icon.png',
                                    height: 10.h,
                                    width: 10.w,
                                  ),
                                ),
                                Consumer<SelectProductController>(
                                    builder: (context, controller, child) {
                                  return TitleWidget(
                                      text: selectController.initialValue
                                          .toString(),
                                      color: Colors.black,
                                      fontsize: 13.sp,
                                      weight: FontWeight.w500);
                                }),
                                GestureDetector(
                                  onTap: () {
                                    selectController.decrementCount();
                                  },
                                  child: Image.asset(
                                    'assets/Icon (1).png',
                                    height: 10.h,
                                    width: 10.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

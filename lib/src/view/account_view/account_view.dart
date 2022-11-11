import 'package:dikazo/src/controller/bottom_controller/bottom_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/account_view/get_help_view/get_help_view.dart';
import 'package:dikazo/src/view/account_view/orders_view/orders_view.dart';
import 'package:dikazo/src/view/account_view/profile_view/profile_view.dart';
import 'package:dikazo/src/view/account_view/wallet_view/wallet_view.dart';
import 'package:dikazo/src/view/account_view/whish_list_view/whish_list_view.dart';
import 'package:dikazo/src/view/edit_addressess_view/edit_addressess_view.dart';
import 'package:dikazo/src/view/splash_view/splash_view.dart';
import 'package:dikazo/src/view/widgets/curve_clipper.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';



class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomController = context.read<BottomController>();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                TestingDecorations(clipper: CurveClipper(), color: Colors.blue),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProfileView()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 40.h, left: 30.w, right: 30.w, bottom: 20.h),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            height: 70.h,
                            width: 70.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200.r),
                            ),
                            child: const Image(
                                image: AssetImage('assets/reviewimage.png')),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TitleWidget(
                            text: 'Hi, Sepide',
                            color: Colors.white,
                            fontsize: 17.sp,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 5.h,
                        ),
                        TitleWidget(
                            text: 'sepide34@gmail.com',
                            color: Colors.white,
                            fontsize: 13.sp,
                            weight: FontWeight.w400)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => OrdersView()));
                          },
                          child: iconContainer(
                              'assets/Shopping_Cart_01.png', 'Orders')),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const WhishList()));
                          },
                          child: iconContainer(
                              'assets/heart-rounded.png', 'Wishlist')),
                      iconContainer('assets/credit-card-02.png', 'Payment'),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const WalletView()));
                          },
                          child:
                              iconContainer('assets/wallet-03.png', 'Wallet')),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  TitleWidget(
                      text: 'Account',
                      color: Colors.black,
                      fontsize: 15.sp,
                      weight: FontWeight.w600),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EditAddressessView()));
                      },
                      child: rowWidget('assets/address.png', 'Address')),
                  SizedBox(
                    height: 20.h,
                  ),
                  rowWidget('assets/coupen.png', 'Coupons'),
                  SizedBox(
                    height: 20.h,
                  ),
                  TitleWidget(
                      text: 'Help & Support',
                      color: Colors.black,
                      fontsize: 15.sp,
                      weight: FontWeight.w600),
                  SizedBox(
                    height: 25.h,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const GetHelpView()));
                      },
                      child: rowWidget('assets/help.png', 'Get Help')),
                  SizedBox(
                    height: 20.h,
                  ),
                  rowWidget('assets/faq.png', 'FAQ'),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      bottomController.selectecdIndexUpdate(0);
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const SplashView(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.r),
                            color: HexColor('#F9EEEE'),
                          ),
                          child: Center(
                              child: Image(
                            image: const AssetImage('assets/logout.png'),
                            height: 20.h,
                            width: 20.w,
                          )),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        TitleWidget(
                            text: 'Logout',
                            color: HexColor('#EA7576'),
                            fontsize: 15.sp,
                            weight: FontWeight.w600)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //----------- This widget is using for buttons for orders whishlist etc. -------------//

  Widget iconContainer(String image, String title) {
    return Column(
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
              image: AssetImage(image),
              height: 25.h,
              width: 25.w,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        TitleWidget(
            text: title,
            color: Colors.black,
            fontsize: 14.sp,
            weight: FontWeight.w500),
      ],
    );
  }

  //------------ row widget is using for accounts & help&support in this screen -------------//

  Widget rowWidget(
    String icon,
    String text,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              icon,
              width: 25.w,
              height: 25.h,
            ),
            SizedBox(
              width: 20.w,
            ),
            TitleWidget(
                text: text,
                color: Colors.black,
                fontsize: 13.sp,
                weight: FontWeight.w600),
            const Spacer(),
            Icon(Icons.arrow_forward_ios_rounded,
                size: 15.h, color: Colors.grey[400]),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 1.h,
          color: Colors.grey[200],
        ),
      ],
    );
  }
}

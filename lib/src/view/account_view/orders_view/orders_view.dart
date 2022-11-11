import 'package:dikazo/src/view/account_view/orders_view/fiter_view_in_order/filter_view_in_order.dart';
import 'package:dikazo/src/view/account_view/orders_view/selected_item_in_orderview/selected_item_orderview.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersView extends StatelessWidget {
  OrdersView({Key? key}) : super(key: key);

  final List<String> imgList = [
    'assets/01.png',
    'assets/02.png',
    'assets/03.png',
    'assets/04.png',
    'assets/05.png',
    'assets/06.png',
    'assets/07.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      size: 20.sp, color: Colors.black),
                ),
                SizedBox(
                  width: 20.w,
                ),
                TitleWidget(
                    text: 'Your orders',
                    color: Colors.black,
                    fontsize: 18.sp,
                    weight: FontWeight.w600)
              ],
            )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  height: 60.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15.w,
                      ),
                      Image.asset(
                        'assets/Search.png',
                        height: 20.h,
                        width: 20.w,
                      ),
                      const Expanded(
                          child: CustomTextFormField(
                        fillcolor: Colors.white,
                      )),
                      Container(
                        height: 27.h,
                        width: 1.w,
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FilterViewInOrder()));
                        },
                        child: Image.asset(
                          'assets/filter_icon.png',
                          height: 25.h,
                          width: 25.w,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SelectedItemInOrderView()));
                  },
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(height: 15.h),
                    itemCount: imgList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return cardWidget(imgList[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //------------- this widget using in this page as card ------------//

  Widget cardWidget(String image) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 90.h,
            width: 85.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(
                    text: 'Lipsy London',
                    color: Colors.black,
                    fontsize: 13.sp,
                    weight: FontWeight.w400),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, con oremsit amet, con orem',
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                  style: GoogleFonts.inter(
                      fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    TitleWidget(
                        text: 'Delivered',
                        color: Colors.green,
                        fontsize: 15.sp,
                        weight: FontWeight.w600),
                    TitleWidget(
                        text: '18-sep-2022',
                        color: Colors.grey,
                        fontsize: 13.sp,
                        weight: FontWeight.w500),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey[300],
            size: 20.sp,
          )
        ],
      ),
    );
  }
}

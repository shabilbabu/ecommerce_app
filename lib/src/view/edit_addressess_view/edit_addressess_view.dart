import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/change_address/change_address.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class EditAddressessView extends StatelessWidget {
  const EditAddressessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
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
                width: 10.w,
              ),
              const Spacer(),
              TitleWidget(
                  text: 'Addresses',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600),
              const Spacer(),
              SizedBox(
                width: 40.w,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChangeAddressView(containerTitle: 'Save address',)));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_outlined,size: 30.sp,color: Colors.grey[500],),
                          SizedBox(width: 10.w,),
                          TitleWidget(text: 'Add new address', color: Colors.black, fontsize: 15.sp, weight: FontWeight.w600)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: HexColor(primaryColor),width: 2),
                  ),
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
                                        child: Icon(Icons.location_on_outlined,size: 30.sp,color: Colors.white,)),
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
                              
                            ],
                          ),
                ),
                SizedBox(height: 20.h,),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 15.h,),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50.h,
                                    width: 50.h,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(200.r),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.location_on_outlined,size: 30.sp,color: Colors.grey[500],)),
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
                              
                            ],
                          )
                  
                );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

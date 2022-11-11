import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/selected_product_view/selected_product_view.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ChangeAddressView extends StatelessWidget {
  const ChangeAddressView({Key? key,required this.containerTitle}) : super(key: key);

  final String containerTitle;

  final String done = 'Done';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TitleWidget(text: 'New address', color: Colors.black, fontsize: 18.sp, weight: FontWeight.w600),
          leading: IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,size: 20.sp)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const CustomTextFormField(fillcolor: Color.fromARGB(255, 231, 231, 231),hintText: 'Type address title',),
                SizedBox(height: 20.h,),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.h,
                        decoration: BoxDecoration(
                          color: HexColor(primaryColor),
                          borderRadius: BorderRadius.circular(200.r),
                        ),
                        child: Center(child: Image(image: const AssetImage('assets/location icon.png'),height: 40.h,width: 30.w,)),
                      ),
                      SizedBox(width: 15.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(text: 'Use my current location', color: Colors.black, fontsize: 14.sp, weight: FontWeight.w600),
                          SizedBox(height: 8.h,),
                          TitleWidget(text: 'john Nowakowska, Zabiniec', color: Colors.grey, fontsize: 13.sp, weight: FontWeight.w400)
                        ],
                      ),
                      const Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,size: 20.sp)
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                const CustomTextFormField(prefixicon: Icon(Icons.lock,),hintText: 'Country/Region',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 20.h,),
                const CustomTextFormField(prefixicon: Icon(Icons.lock,),hintText: 'Full name',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 20.h,),
                const CustomTextFormField(hintText: 'Address line 1',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 20.h,),
                const CustomTextFormField(hintText: 'Address line 2',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 20.h,),
                const CustomTextFormField(hintText: 'City',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 20.h,),
                const CustomTextFormField(hintText: 'State',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 20.h,),
                const CustomTextFormField(hintText: 'Zip code',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 20.h,),
                const CustomTextFormField(prefixicon: Icon(Icons.phone,),hintText: '+91 |Phone number',fillcolor: Color.fromARGB(255, 231, 231, 231)),
                SizedBox(height: 30.h,),
                GestureDetector(
                  onTap: () {
                    done == containerTitle 
                   ? Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SelectedProductView()))
                   : Navigator.of(context).pop();
                  },
                  child: ContainerButton(text: containerTitle,height: 60.h,fontSize: 15.sp,weight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:dikazo/src/controller/authentication_controller/register_controller/register_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../widgets/container_button.dart';
import '../../widgets/page_transitions/fade_animation.dart';
import 'confirm_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerController = context.watch<RegisterController>();
    return SizedBox(
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
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 66.h,
                        ),
                        Center(
                          child: Image.asset(
                            dikazoLogo,
                            height: 68,
                            width: 124,
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        const TitleWidget(
                          text: 'Setup profile',
                          color: Colors.black,
                          fontsize: 20,
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 130,
                          width: 130,
                          child: Stack(
                            children: [
                              Consumer<RegisterController>(
                                  builder: (context, controller, child) {
                                return controller.img == null
                                    ? Container(
                                        height: 124.h,
                                        width: 124.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                          color: HexColor('#E6E6E6'),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/user-01.png',
                                            height: 35.h,
                                            width: 35.w,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 124.h,
                                        width: 124.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                          color: HexColor('#E6E6E6'),
                                          image: DecorationImage(
                                              image: FileImage(
                                                controller.img!,
                                              ),
                                              fit: BoxFit.cover),
                                        ),
                                      );
                              }),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                topStart: Radius.circular(40.r),
                                                topEnd: Radius.circular(40.r)),
                                      ),
                                      context: context,
                                      builder: ((context) {
                                        return SizedBox(
                                            height: 200.h,
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      registerController
                                                          .chooseImage(
                                                              ImageSource
                                                                  .camera,
                                                              context);
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: SizedBox(
                                                      height: 150.h,
                                                      width: 100.w,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .camera_alt_rounded,
                                                            color: Colors.black,
                                                            size: 40.sp,
                                                          ),
                                                          SizedBox(
                                                            height: 15.h,
                                                          ),
                                                          TitleWidget(
                                                            text: 'Camera',
                                                            color: Colors.black,
                                                            fontsize: 15.sp,
                                                            weight:
                                                                FontWeight.w700,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      registerController
                                                          .chooseImage(
                                                              ImageSource
                                                                  .gallery,
                                                              context);
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: SizedBox(
                                                      height: 150.h,
                                                      width: 100.w,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .photo_camera_back_outlined,
                                                            color: Colors.black,
                                                            size: 40.sp,
                                                          ),
                                                          SizedBox(
                                                            height: 15.h,
                                                          ),
                                                          TitleWidget(
                                                            text: 'Gallery',
                                                            color: Colors.black,
                                                            fontsize: 15.sp,
                                                            weight:
                                                                FontWeight.w700,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ));
                                      }),
                                    );
                                  },
                                  child: Container(
                                      height: 50.h,
                                      width: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.photo_camera_outlined,
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        const TitleWidget(
                          text: 'Upload Image',
                          color: Colors.black,
                          fontsize: 18,
                          weight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextFormField(
                          color: HexColor('#E6E6E6'),
                          prefixicon: const Icon(
                            Icons.person_outline_sharp,
                          ),
                          hintText: 'Full name',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Date of Birth',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 15,
                            ),
                            prefixIcon: const Icon(Icons.date_range_outlined),
                            fillColor: Colors.grey[100],
                            filled: true,
                          ),
                          onTap: () async {},
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 60.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15.r)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5.w,),
                              Image.asset('assets/gender icon.png',height: 30.h,width: 30.w,),
                              Expanded(
                                child: CustomTextFormField(
                                  color: HexColor('#E6E6E6'),
                                  fillcolor: Colors.transparent,
                                  hintText: 'Gender',
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        SizedBox(height: 110.h),
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
              child: GestureDetector(
                onTap: () => Navigator.push(context, FadeRoute2(const ConfirmView())),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ContainerButton(
                    text: 'Sign up',
                    height: 60.h,
                    weight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //------------ navigation function -----------//
  void navigateTo(context, screen) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

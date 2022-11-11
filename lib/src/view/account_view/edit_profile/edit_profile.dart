import 'package:dikazo/src/controller/edit_profile_controller/edit_profile_controller.dart';
import 'package:dikazo/src/utils/constents.dart';
import 'package:dikazo/src/view/account_view/profile_view/profile_view.dart';
import 'package:dikazo/src/view/widgets/container_button.dart';
import 'package:dikazo/src/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../widgets/title_widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditProfileController>();
    return SafeArea(
      child: Scaffold(
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileView()));
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
              const Spacer(),
              TitleWidget(
                  text: 'Edit Profile',
                  color: Colors.black,
                  fontsize: 18.sp,
                  weight: FontWeight.w600),
              const Spacer(),
              SizedBox(
                width: 45.w,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 130,
                              width: 130,
                              child: Stack(
                                children: [
                                  Consumer<EditProfileController>(
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
                                                'assets/reviewimage.png',
                                              ),
                                            ),
                                          )
                                        : Container(
                                            height: 124.h,
                                            width: 124.h,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 1),
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
                                                    topStart:
                                                        Radius.circular(40.r),
                                                    topEnd:
                                                        Radius.circular(40.r)),
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
                                                          controller
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
                                                                color: Colors
                                                                    .black,
                                                                size: 40.sp,
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              TitleWidget(
                                                                text: 'Camera',
                                                                color: Colors
                                                                    .black,
                                                                fontsize: 15.sp,
                                                                weight:
                                                                    FontWeight
                                                                        .w700,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          controller
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
                                                                color: Colors
                                                                    .black,
                                                                size: 40.sp,
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              TitleWidget(
                                                                text: 'Gallery',
                                                                color: Colors
                                                                    .black,
                                                                fontsize: 15.sp,
                                                                weight:
                                                                    FontWeight
                                                                        .w700,
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
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
                                              color: HexColor(primaryColor),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Center(
                                              child: Image(
                                            image: const AssetImage(
                                                'assets/Edit_Pencil_Line_01.png'),
                                            height: 30.h,
                                            width: 30.w,
                                          ))),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomTextFormField(
                          prefixicon: Icon(Icons.person_outline_rounded),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomTextFormField(
                          prefixicon: Icon(Icons.mail_outline),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomTextFormField(
                          prefixicon: Icon(Icons.phone),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomTextFormField(
                          prefixicon: Icon(Icons.date_range_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileView()));
                    },
                    child: ContainerButton(
                      text: 'Save',
                      height: 60.h,
                      fontSize: 15.sp,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../../controller/bottom_controller/bottom_controller.dart';

class BottomView extends StatelessWidget {
  const BottomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<BottomController>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          controller.pages[controller.currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: buildBottom(context),
            ),),
        ],
      ),
    );
  }

  Widget buildBottom(BuildContext context) {
    final controller = context.read<BottomController>();
    final controllerwatch = context.watch<BottomController>();
    return Material(
      borderRadius: BorderRadius.circular(20.r),
      color: HexColor('#6C68F0'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) => GestureDetector(
          onTap: () {
            controller.selectecdIndexUpdate(index);
          },
          child: index == controllerwatch.selectedIndex
              ? Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                      width: 60.h,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: HexColor('#8E93F3'),
                      ),
                      child: Center(
                          child: Image.asset(
                        controllerwatch.icons[index],
                        width: 25.w,
                        height: 25.h,
                      ))),
                )
              : SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Image.asset(
                      controllerwatch.icons[index],
                      width: 25.w,
                      height: 25.h,
                    ),
                  ),
                ),
        ))
      ),
    );
  }
}
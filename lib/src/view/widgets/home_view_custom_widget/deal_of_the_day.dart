import 'package:dikazo/src/view/widgets/timer_container.dart';
import 'package:dikazo/src/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DealOfTheDay extends StatelessWidget {
  DealOfTheDay({Key? key}) : super(key: key);

  List<String> images = [
    'assets/Rectangle 2440.png',
    'assets/Rectangle 2494.png',
    'assets/Rectangle 2502.png',
    'assets/Rectangle 2503.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: HexColor('#716EF0'),
        ),
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [HexColor('#8A8FF3'), Colors.white]),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text('Deal of the day',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const EndsInTitle(color: Colors.white, fontSize: 18),
              SizedBox(
                width: 10.h,
              ),
              const TimerContainer(
                textColor: Colors.white,
                containerColor: Colors.white,
                opacity: 0.5,
                semiColomn: Colors.white,
                fontSize: 17,
                semiColomnFontSize: 18,
                containerHight: 35,
                containerWidth: 35,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SizedBox(
              height: 500,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 20),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: 150.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text('Heading',
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('Upto 25% Off',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
